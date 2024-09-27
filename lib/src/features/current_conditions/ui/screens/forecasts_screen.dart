import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_flutter/resources/l10n/l10n.dart';
import 'package:interview_flutter/src/core/di/app_injection.dart';
import 'package:interview_flutter/src/core/exceptions/api_exceptions.dart';
import 'package:interview_flutter/src/core/ui/widgets/adaptive_loading_indicator.dart';
import 'package:interview_flutter/src/core/ui/widgets/add_action_button.dart';
import 'package:interview_flutter/src/core/utils/async_cubit_state_management/async_cubit_state_management.dart';
import 'package:interview_flutter/src/features/current_conditions/application/current_conditions_cubit.dart';
import 'package:interview_flutter/src/features/current_conditions/domain/city_forecast.dart';
import 'package:interview_flutter/src/features/current_conditions/ui/widgets/forecast_card.dart';
import 'package:interview_flutter/src/features/current_conditions/ui/widgets/no_data_image.dart';
import 'package:interview_flutter/src/features/search/ui/widgets/add_city_bottom_sheet.dart';

///Screen that reflects CurrentConditionsCubit state
class ForecastsScreen extends StatelessWidget {
  const ForecastsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CurrentConditionsCubit>(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: AsyncBlocConsumer<CurrentConditionsCubit, ApiExceptions,
                List<CityForecast>>(
              listener: (context, state) {
                if (state.isError) {
                  //Show snackbar with a generic error message
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(context.l10n.unexpected_error),
                    ),
                  );
                  // TODO(Eval): Consider showing a more specific error message
                }
              },
              builder: (context, state) => state.isLoading
                  ? const AdaptiveLoadingIndicator()
                  : state.data?.isEmpty ?? true
                      ? const NoDataImage()
                      : Padding(
                          padding: const EdgeInsets.all(8),
                          child: ListView.builder(
                            itemCount: state.data?.length,
                            itemBuilder: (context, index) {
                              final forecast = state.data?[index];
                              if (forecast == null) {
                                return const SizedBox();
                              }
                              return ForecastCard(forecast: forecast);
                            },
                            // TODO(Eval): Consider adding a refresh button.
                          ),
                        ),
            ),
            floatingActionButton: AddActionButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (_) {
                    return AddCityBottomSheet(
                      onCityAdded: (city) {
                        context
                            .read<CurrentConditionsCubit>()
                            .fetchCurrentConditions(city);
                      },
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
