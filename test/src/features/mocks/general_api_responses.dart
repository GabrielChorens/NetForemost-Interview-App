///Example of error response from the API when the API key is not provided:

final mockErrorApiKeyResponse = {
  'fault': {
    'faultstring':
        'Failed to resolve API Key variable request.queryparam.apikey',
    'detail': {'errorcode': 'steps.oauth.v2.FailedToResolveAPIKey'},
  },
} as Object?;

///Example of error response from the API when the location key is invalid:

final mockErrorLocationKeyResponse = {
  'Code': '400',
  'Message': 'Invalid location key: 25381sdfsdf0',
  'Reference': '/currentconditions/v1/25381sdfsdf0',
} as Object?;
