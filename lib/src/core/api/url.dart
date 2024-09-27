///Base endpoint for the AccuWeather API
const baseUrl = 'http://dataservice.accuweather.com/';

///Url for retrieving a list of locations based on a search query
const autoCompleteUrl = 'locations/v1/cities/autocomplete';

///Url for retrieving the current weather conditions for a location
String currentConditionsUrl({
  required String locationKey,
}) =>
    'currentconditions/v1/$locationKey';
