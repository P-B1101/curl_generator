import 'package:curl_generator/curl_generator.dart';

void initTest() {
  const url = 'https://some.api.com/some/path';
  const params = {
    'some': 'some',
    'params': 'params',
  };
  const header = {
    'some': 'some',
    'header': 'header',
  };
  const body = {
    'some': 'some',
    'body': 'body',
    'value': 123,
    'innerObject': {
      'some': 'some',
      'inner': false,
      'value': 2.5,
    },
  };
  final curl = Curl.curlOf(
    url: url,
    body: body,
    header: header,
    queryParams: params,
  );

  print(curl);
}
