import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Olap chaika Group Code

class OlapChaikaGroup {
  static String baseUrl = 'https://iiko.biz:9900';
  static Map<String, String> headers = {};
  static TokenCall tokenCall = TokenCall();
}

class TokenCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'token',
      apiUrl:
          '${OlapChaikaGroup.baseUrl}/api/0/auth/access_token?user_id=demoDelivery&user_secret=PI1yFaKFCGvvJKi',
      callType: ApiCallType.GET,
      headers: {
        ...OlapChaikaGroup.headers,
        'Content-Type': 'text/plain',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic key(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

/// End Olap chaika Group Code

class GroupCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Group',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:yGjmpnit/group',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApikeyCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'apikey',
      apiUrl: 'https://api.gastrodvor.online/apikey',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeactiveKeyCall {
  static Future<ApiCallResponse> call({
    String? key = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DeactiveKey',
      apiUrl: 'https://api.gastrodvor.online/deactive/${key}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SkladCall {
  static Future<ApiCallResponse> call({
    String? key = '',
    String? date = '',
    String? product = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Sklad',
      apiUrl:
          'http://194.9.27.239:8129/resto/api/v2/reports/balance/stores?key=${key}&product=${product}&timestamp=2023-01-15T03:10:10',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class InfoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'info',
      apiUrl:
          'http://194.9.27.239:8129/resto/api/v2/entities/list?rootType=MeasureUnit',
      callType: ApiCallType.GET,
      headers: {
        'Set-Cookie':
            'key=018bde3c-984b-e1d7-3a11-c171ec351a2d; JSESSIONID=6CCE62E29AF13DBD6827FC47D0C259E1',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class NomeclatureCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Nomeclature',
      apiUrl:
          'https://app.chaika-iiko.ru/api/v1/db/data/v1/postgres/nomenclature?limit=3000&shuffle=0&offset=0',
      callType: ApiCallType.GET,
      headers: {
        'xc-token': 'Hx956fs8Toe84TFrI-N38Pm-16PLdn9_papcF6D_',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.list[:].name''',
        true,
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.list[:].name_id''',
        true,
      );
}

class OstatokCall {
  static Future<ApiCallResponse> call({
    String? key = '',
    String? product = '',
    String? time = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'ostatok',
      apiUrl:
          'http://194.9.27.239:8129/resto/api/v2/reports/balance/stores?key=${key}&product=${product}&timestamp=${time}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic store(dynamic response) => getJsonField(
        response,
        r'''$[:].store''',
      );
  static dynamic product(dynamic response) => getJsonField(
        response,
        r'''$[:].product''',
      );
  static dynamic amount(dynamic response) => getJsonField(
        response,
        r'''$[:].amount''',
      );
  static dynamic sum(dynamic response) => getJsonField(
        response,
        r'''$[:].sum''',
        true,
      );
}

class TestcallinfoCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'testcallinfo',
      apiUrl: 'https://api.gastrodvor.online/products/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      );
  static dynamic amount(dynamic response) => getJsonField(
        response,
        r'''$[:].amount''',
        true,
      );
  static dynamic sum(dynamic response) => getJsonField(
        response,
        r'''$[:].sum''',
        true,
      );
}

class FjdsklfjdslkCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'fjdsklfjdslk',
      apiUrl: 'https://app.chaika-iiko.ru/api/v1/db/data/v1/postgres/sklad',
      callType: ApiCallType.GET,
      headers: {
        'xc-token': 'Hx956fs8Toe84TFrI-N38Pm-16PLdn9_papcF6D_',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
