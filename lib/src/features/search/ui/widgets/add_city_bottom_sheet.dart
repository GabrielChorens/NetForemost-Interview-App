import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_flutter/resources/l10n/l10n.dart';
import 'package:interview_flutter/src/core/di/app_injection.dart';
import 'package:interview_flutter/src/core/ui/colors.dart';
import 'package:interview_flutter/src/features/search/application/search_cubit.dart';
import 'package:interview_flutter/src/features/search/domain/entities/city.dart';
import 'package:interview_flutter/src/features/search/ui/widgets/add_city_text_field.dart';
import 'package:interview_flutter/src/features/search/ui/widgets/description_text_field.dart';

class AddCityBottomSheet extends StatefulWidget {
  const AddCityBottomSheet({super.key, required this.onCityAdded});
  final void Function(City city) onCityAdded;
  @override
  State<AddCityBottomSheet> createState() => _AddCityBottomSheetState();
}

class _AddCityBottomSheetState extends State<AddCityBottomSheet> {
  final TextEditingController descriptionController = TextEditingController();

  @override
  void dispose() {
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SearchCubit>(),
      child: Builder(
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const _Notch(),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 24,
                      bottom: 16,
                    ),
                    child: AddCityTextField(),
                  ),
                  DescriptionTextField(
                    textEditingController: descriptionController,
                  ),
                  BlocBuilder<SearchCubit, City?>(
                    builder: (context, state) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: state != null
                                ? AppColors.blue
                                : AppColors.inactiveGray,
                            maximumSize: const Size(double.infinity, 50),
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          onPressed: () {
                            final city = context.read<SearchCubit>().state;
                            if (city != null) {
                              widget.onCityAdded(
                                city.copyWith(
                                  description:
                                      descriptionController.text.isNotEmpty
                                          ? descriptionController.text
                                          : null,
                                ),
                              );
                              Navigator.of(context).pop();
                            }
                          },
                          child: Text(
                            context.l10n.save_city,
                            style: const TextStyle(
                                fontSize: 16, color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Notch extends StatelessWidget {
  const _Notch();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 5,
      decoration: BoxDecoration(
        color: AppColors.inactiveGray,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
