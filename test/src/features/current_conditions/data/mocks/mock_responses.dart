///Example of right response from the API:

final mockRightResponse = [
  {
    'LocalObservationDateTime': '2024-09-26T12:35:00-06:00',
    'EpochTime': 1727375700,
    'WeatherText': 'Mostly cloudy',
    'WeatherIcon': 6,
    'HasPrecipitation': false,
    'PrecipitationType': null,
    'IsDayTime': true,
    'Temperature': {
      'Metric': {'Value': 28.9, 'Unit': 'C', 'UnitType': 17},
      'Imperial': {'Value': 84, 'Unit': 'F', 'UnitType': 18},
    },
    'MobileLink':
        'http://www.accuweather.com/en/ni/managua/253810/current-weather/253810?lang=en-us',
    'Link':
        'http://www.accuweather.com/en/ni/managua/253810/current-weather/253810?lang=en-us',
  }
] as Object?;
