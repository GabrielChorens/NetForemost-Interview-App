import 'package:flutter/material.dart';
import 'package:interview_flutter/src/core/ui/colors.dart';
import 'package:interview_flutter/src/features/current_conditions/domain/city_forecast.dart';

///Card that displays the current weather conditions for a city.
class ForecastCard extends StatelessWidget {
  const ForecastCard({super.key, required this.forecast});
  final CityForecast forecast;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Card(
        color: Theme.of(context).scaffoldBackgroundColor,
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(
            color: AppColors.lightGray,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: _Content(forecast: forecast),
            ),
            const Spacer(),
            _TrailingIcon(forecast: forecast),
          ],
        ),
      ),
    );
  }
}

///City name and description
class _Content extends StatelessWidget {
  const _Content({required this.forecast});
  final CityForecast forecast;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          forecast.cityName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 4,
          ),
          width: MediaQuery.of(context).size.width * 0.4,
          child: Text(
            forecast.description ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}

///Weather icon and date
class _TrailingIcon extends StatelessWidget {
  const _TrailingIcon({required this.forecast});

  final CityForecast forecast;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: forecast.isDayTime ? AppColors.lightBlue : AppColors.darkBlue,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/${forecast.weatherIcon}.png',
              width: 60,
              height: 50,
            ),
            Text(
              forecast.date,
              style: TextStyle(
                fontSize: 14,
                color: forecast.isDayTime ? Colors.black : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
