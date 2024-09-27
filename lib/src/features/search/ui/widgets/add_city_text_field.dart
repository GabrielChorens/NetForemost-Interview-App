import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_flutter/resources/l10n/l10n.dart';
import 'package:interview_flutter/src/core/ui/colors.dart';
import 'package:interview_flutter/src/core/ui/foremost_icons.dart';
import 'package:interview_flutter/src/core/ui/utils.dart';
import 'package:interview_flutter/src/features/search/application/search_cubit.dart';
import 'package:interview_flutter/src/features/search/domain/entities/city.dart';

class AddCityTextField extends StatelessWidget {
  const AddCityTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Autocomplete<City>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        return context
            .read<SearchCubit>()
            .searchCitiesByQuery(textEditingValue.text);
      },
      displayStringForOption: (City option) => option.cityName,
      fieldViewBuilder: (
        BuildContext context,
        TextEditingController textEditingController,
        FocusNode focusNode,
        VoidCallback onFieldSubmitted,
      ) {
        return TextField(
          controller: textEditingController,
          focusNode: focusNode,
          onTapOutside: (_) {
            focusNode.unfocus();
          },
          decoration: appInputDecoration.copyWith(
            labelText: context.l10n.add_city,
            suffix: _ClearIcon(textEditingController: textEditingController),
          ),
          onEditingComplete: () {
            focusNode.unfocus();
          },
          onSubmitted: (_) {
            onFieldSubmitted();
          },
        );
      },
      onSelected: (City city) {
        context.read<SearchCubit>().selectCity(city);
      },
      optionsMaxHeight: 300,
    );
  }
}

class _ClearIcon extends StatelessWidget {
  const _ClearIcon({required this.textEditingController});

  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        ForemostIcons.clear,
        color: AppColors.inactiveGray,
      ),
      splashColor: AppColors.lightBlue,
      padding: EdgeInsets.zero,
      onPressed: textEditingController.clear,
    );
  }
}
