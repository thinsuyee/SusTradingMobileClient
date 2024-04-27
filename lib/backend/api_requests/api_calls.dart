import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TestGetProductsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'testGetProducts',
      apiUrl: 'https://dummyjson.com/products/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? products(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
}

class QueryProductByIDCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'queryProductByID',
      apiUrl:
          'https://524f-219-75-69-73.ngrok-free.app/api/product/query?id=$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJMTThmeFVtTjQwNmlPZnhFNGd2RWlxdEVUdFVySEdnZm84bUJ4cFNuUmI0In0.eyJleHAiOjE3MTQwNjU1MzIsImlhdCI6MTcxNDA2NTIzMiwiYXV0aF90aW1lIjoxNzE0MDYzNzY3LCJqdGkiOiJlZjc3YTc0My03ZjgxLTQ0MGItYWFhYi0wM2VlZDhlNjI4OTgiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6IjNkNzE2MGI0LTc4OTgtNDFiMi04ODJlLTI1NTg5MDY5MzY3ZCIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiJmMWM5OWZjMS03MTI4LTRiNWItOWRhNy1mOGUzYjNlODhkNGQiLCJzZXNzaW9uX3N0YXRlIjoiZWRjZDE5YzktZjRiOS00Y2M4LWExYzEtYTBmZTkwNjU1NjU4IiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIlBST0RVQ1QtREVMRVRFIiwiSU5WRU5UT1JZLUNSRUFURSIsIk9SREVSLURFTEVURSIsIklOVkVOVE9SWS1VUERBVEUiLCJQUk9EVUNULVVQREFURSIsIlBST0RVQ1QtVklFVyIsIkFETUlOIiwiSU5WRU5UT1JZLURFTEVURSIsIlBST0RVQ1QtQ1JFQVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6ImVkY2QxOWM5LWY0YjktNGNjOC1hMWMxLWEwZmU5MDY1NTY1OCIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwibmFtZSI6Im1hcnkgdGFuIiwicHJlZmVycmVkX3VzZXJuYW1lIjoibWFyeSIsImdpdmVuX25hbWUiOiJtYXJ5IiwiZmFtaWx5X25hbWUiOiJ0YW4ifQ.INlZbcOr1LHrP0by4BiwsGC0IHvVhOjZXeTZC7y_ZPzSwZ6GfvXLhAe-NmO5T1oSrXtjaG3zll2ZmQVy-lxl0SzW3gNYaecTzYKsMtzELgIQF_t35Tu7KNxHqlUIXn558XVehGeJW7y_sBGeDpApBfgjcCaliUW1S39IUwzZ1aXTFkhmp59nOVhOXsWzLieAMMK661f7QY5SydPBNk3QPvJi9kvsnR28CcS-veuhcMgZJjXNpCXObkMd3l_ouWeYK9_H7GZhokjvU-glNU4st5A9e2xfFGr0KlhJZxSOfJlC1iT2qejFIrhu6F1vOeD4RQyV2i6YNptxmH5gFEujLA',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? products(dynamic response) => (getJsonField(
        response,
        r'''$.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class QueryProductByIDToTestInventoryCall {
  static Future<ApiCallResponse> call({
    String? id = '6627cb7576c2ba5b31752377',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'queryProductByIDToTestInventory',
      apiUrl:
          'https://fcc6-103-6-150-177.ngrok-free.app/api/product/query?id=$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJLZEtYak9zNVNXMl9xVXBtQXZ4bThoZ0U1end3OWxzaFM0V19MQWxHZ3VJIn0.eyJleHAiOjE3MTQyMTE4NzEsImlhdCI6MTcxNDIxMTU3MSwiYXV0aF90aW1lIjoxNzE0MjEwNzkyLCJqdGkiOiJjMzk3ZDRkZS02YzhjLTQ1MGYtOGRjYi1lMDVjNzRkMjc3OWUiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6ImZiZDgyZDAzLTE0MjktNDIwOC04NzQ2LTI4NDQxNTQ2ZWQ5MSIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiJmNWU3ZDE1Ni05ZWY3LTRjZGQtOGJjOC0xOTI5YzY4MDFlNjAiLCJzZXNzaW9uX3N0YXRlIjoiYTc4YzllNWEtZjE0Ni00ZGEwLWI2NDEtNDMwMTNmODMwMTQzIiwiYWNyIjoiMCIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIklOVkVOVE9SWS1VUERBVEUiLCJPUkRFUi1DUkVBVEUiLCJPUkRFUi1WSUVXIiwiUFJPRFVDVC1DUkVBVEUiLCJQUk9EVUNULURFTEVURSIsIklOVkVOVE9SWS1DUkVBVEUiLCJPUkRFUi1ERUxFVEUiLCJQUk9EVUNULVVQREFURSIsIklOVkVOVE9SWS1WSUVXIiwiUFJPRFVDVC1WSUVXIiwiQURNSU4iLCJPUkRFUi1VUERBVEUiLCJJTlZFTlRPUlktREVMRVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6ImE3OGM5ZTVhLWYxNDYtNGRhMC1iNjQxLTQzMDEzZjgzMDE0MyIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwicHJlZmVycmVkX3VzZXJuYW1lIjoiYmVhIn0.Rzj5t1VCGingwOD9480Rn-srNpWuz9wRwxzMeoxSv3zH64Y-RLOMH8Ghh2QGYVUaKzhoYROMesTBJPnts2MtAFWl12QayYHy4dZSCHXPm5ieMTExCjU0QCYzjakpNcjLtS8GT_l0JCcVZ9LjuaTENOwd5mVSHW9T--ByOmnBpPE8FdJpM5OzAtkOsu8FYD63QXGkqjciGwyFS86wItp6EHveLalYLHDj0RJ3LEIBKa9Pq17xRzhfVpPlYbrtnw2Cu30eC7JaNxi3mC9Jc6DogoAWFPdSmEwbJ0AVSY0cZSVFkzdxehJyPLgoQoggqXRh2P6423KEEAglydCa9ghJqQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? products(dynamic response) => (getJsonField(
        response,
        r'''$.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AccountCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Account',
      apiUrl:
          'https://142f-219-75-69-73.ngrok-free.app/realms/SusCompanyRealm/protocol/openid-connect/token',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'client_id': "frontend",
        'client_secret': "L5pkWsm44V3F699X8vTf42Irx7QvE45w",
        'grant_type': "password",
        'scope': "openid",
        'username': username,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateProductCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
 
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateProduct',
      apiUrl: 'https://524f-219-75-69-73.ngrok-free.app/api/product',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJMTThmeFVtTjQwNmlPZnhFNGd2RWlxdEVUdFVySEdnZm84bUJ4cFNuUmI0In0.eyJleHAiOjE3MTM2NDY5MzMsImlhdCI6MTcxMzY0NjYzMywiYXV0aF90aW1lIjoxNzEzNjQ1NzUxLCJqdGkiOiJmZDY3MjQwZi1hYjQ4LTQwNWMtOTQ1NC04MDY1Mjk5YjVjNTkiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6IjNkNzE2MGI0LTc4OTgtNDFiMi04ODJlLTI1NTg5MDY5MzY3ZCIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiIwZGEzN2Q5NC01MmQzLTQ2ZWYtOTE1Zi05M2YwMTdhMGY3Y2YiLCJzZXNzaW9uX3N0YXRlIjoiOGRjMjNiZGEtYmQ2MS00OTY0LTk3OWEtNTJiMDU1ZTlkNDY0IiwiYWNyIjoiMCIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIlBST0RVQ1QtREVMRVRFIiwiSU5WRU5UT1JZLUNSRUFURSIsIk9SREVSLURFTEVURSIsIklOVkVOVE9SWS1VUERBVEUiLCJQUk9EVUNULVVQREFURSIsIlBST0RVQ1QtVklFVyIsIkFETUlOIiwiSU5WRU5UT1JZLURFTEVURSIsIlBST0RVQ1QtQ1JFQVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6IjhkYzIzYmRhLWJkNjEtNDk2NC05NzlhLTUyYjA1NWU5ZDQ2NCIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwibmFtZSI6Im1hcnkgdGFuIiwicHJlZmVycmVkX3VzZXJuYW1lIjoibWFyeSIsImdpdmVuX25hbWUiOiJtYXJ5IiwiZmFtaWx5X25hbWUiOiJ0YW4ifQ.RTtDkMJnXVPStOLJ0wc1SH_bPiFOCWWd6XYSbHJdnUybqOf7H4sGa1JkxaeqcxHQc-TW5dNeFuUi0orEwzcgbZ3sr0OcwwVpkHPZBWJyBrzg7X_i4W2y-URY4grK2z4AFJEpJj1Cm6ShERdwYpjPwd0xiSzrGQOOf5zDbFdILClqqVwecX4_N1Ph6PvdH-YOfSABZaCjiESq9YpL_F7S3CbubNDGYbV_dw49j6lr8etI6tHraLQehiy1wlyAB8679GGshvSc6NIvgAITy4ADnQDnIIV66opdaMLQ0JokMClFZsMANsfs2IBP3FDfgK6bGBwWQrT4UBCVLeTlN_K6BA',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SingleProductsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'SingleProducts',
      apiUrl: 'https://35ea-219-75-69-73.ngrok-free.app/api/product',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJMTThmeFVtTjQwNmlPZnhFNGd2RWlxdEVUdFVySEdnZm84bUJ4cFNuUmI0In0.eyJleHAiOjE3MTM2NDg3MTgsImlhdCI6MTcxMzY0ODQxOCwiYXV0aF90aW1lIjoxNzEzNjQ1NzUxLCJqdGkiOiI2Y2I1NDkyNi1lMGFiLTQ4NGMtYjMyOC0xY2JjZmIzOTMzNzEiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6IjNkNzE2MGI0LTc4OTgtNDFiMi04ODJlLTI1NTg5MDY5MzY3ZCIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiI5MTVkY2U3MS01ZmY2LTQwNjgtODZhNi05YThiZDFlZWMzN2UiLCJzZXNzaW9uX3N0YXRlIjoiOGRjMjNiZGEtYmQ2MS00OTY0LTk3OWEtNTJiMDU1ZTlkNDY0IiwiYWNyIjoiMCIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIlBST0RVQ1QtREVMRVRFIiwiSU5WRU5UT1JZLUNSRUFURSIsIk9SREVSLURFTEVURSIsIklOVkVOVE9SWS1VUERBVEUiLCJQUk9EVUNULVVQREFURSIsIlBST0RVQ1QtVklFVyIsIkFETUlOIiwiSU5WRU5UT1JZLURFTEVURSIsIlBST0RVQ1QtQ1JFQVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6IjhkYzIzYmRhLWJkNjEtNDk2NC05NzlhLTUyYjA1NWU5ZDQ2NCIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwibmFtZSI6Im1hcnkgdGFuIiwicHJlZmVycmVkX3VzZXJuYW1lIjoibWFyeSIsImdpdmVuX25hbWUiOiJtYXJ5IiwiZmFtaWx5X25hbWUiOiJ0YW4ifQ.cue9KT36xcZHsgQg6WW1TUUii5LETDaJj_HQgS5BAUjESm9RQEaPC6y9CQvYjwnJJoDqdOxZD9vR39YkntfvCBrgF2RksX3bFmNp9cY8qZj5T_YYacjSLWuWCqWX6Q-w2hIXc_WsfzD4hJcfLLBMY4x1r6awRnYisKZsZhumFMcOgecqKL44Hifpc7yzP-bYhw2JaDTY0DmANbycaURMi4mOT5aHTIaSovPvPdCrII-3pYYLRd7y2dxSFc8XgO_-BrgbSMlARpyiaQzT2n-su14dKWVuHMEr3Iqv3repVEQ7QXIUYFlofPdD-bAVUCw8aMeEKoCjlw7XiQijaSCs0A',
        'Accept-Encoding': 'gzip, deflate, br, zstd',
        'Accept-Language': 'en-US, en;q=0.9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProductsAPICall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProductsAPI',
      apiUrl: 'https://524f-219-75-69-73.ngrok-free.app/api/product',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Accept-Encoding': 'gzip, deflate, br, zstd',
        'Accept-Language': 'en-US,en;q=0.9',
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllInventoryCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllInventory',
      apiUrl: 'https://fcc6-103-6-150-177.ngrok-free.app/api/inventory',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Accept-Encoding': 'gzip, deflate, br, zstd',
        'Accept-Language': 'en-US,en;q=0.9',
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJLZEtYak9zNVNXMl9xVXBtQXZ4bThoZ0U1end3OWxzaFM0V19MQWxHZ3VJIn0.eyJleHAiOjE3MTQyMTEwOTIsImlhdCI6MTcxNDIxMDc5MiwiYXV0aF90aW1lIjoxNzE0MjEwNzkyLCJqdGkiOiJjOWEyNjA0Yy1lMTE3LTQyMDUtYjIyZi01ZmQ0M2FlZDk5OWEiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6ImZiZDgyZDAzLTE0MjktNDIwOC04NzQ2LTI4NDQxNTQ2ZWQ5MSIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiJiNjNmYTk5ZC1lOGM5LTQxNDMtOTllNi0zYzY3NGQ5ODRjMTgiLCJzZXNzaW9uX3N0YXRlIjoiYTc4YzllNWEtZjE0Ni00ZGEwLWI2NDEtNDMwMTNmODMwMTQzIiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIklOVkVOVE9SWS1VUERBVEUiLCJPUkRFUi1DUkVBVEUiLCJPUkRFUi1WSUVXIiwiUFJPRFVDVC1DUkVBVEUiLCJQUk9EVUNULURFTEVURSIsIklOVkVOVE9SWS1DUkVBVEUiLCJPUkRFUi1ERUxFVEUiLCJQUk9EVUNULVVQREFURSIsIklOVkVOVE9SWS1WSUVXIiwiUFJPRFVDVC1WSUVXIiwiQURNSU4iLCJPUkRFUi1VUERBVEUiLCJJTlZFTlRPUlktREVMRVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6ImE3OGM5ZTVhLWYxNDYtNGRhMC1iNjQxLTQzMDEzZjgzMDE0MyIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwicHJlZmVycmVkX3VzZXJuYW1lIjoiYmVhIn0.r2p1jpR1TyF-2ohWLZ3Tl-QztIOYhP3CA5ZHg_kNQgCShJU7ZhQZ3ntoBYdVOdtXkufduvih5rfULdZz3SPxIivECx8yN6ItFi7MJZN78nxHafYDari4twNXNFyuIMGorQFV9TOaRLQLHK7W7_KY8L68lHJTdBaXU6Zxm3OKuMcEDwqr7_1RnxtmXgA47z3r2JXdwrYnfgWaTXP4Eb-_7Ae-nZxnNeh56pAQexS2acznMrV6VzFTRIEvnJPm1RJQ69WnpFqKmVIgBieQL1dMFxD2swUdDRbT-efJSxZ9tByHpQ2QsbTHJzQwZLEeeIm9ZboSIQWuWCmFxmv1bKYphg',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? inventory(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class CreateInventoryCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
    "skuCode": "4322",
    "quantity": 120,
    "productId": "6627cb7576c2ba5b31752377"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createInventory',
      apiUrl: 'https://fcc6-103-6-150-177.ngrok-free.app/api/inventory',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJLZEtYak9zNVNXMl9xVXBtQXZ4bThoZ0U1end3OWxzaFM0V19MQWxHZ3VJIn0.eyJleHAiOjE3MTQxNTQzNzQsImlhdCI6MTcxNDE1NDA3NCwiYXV0aF90aW1lIjoxNzE0MTU0MDczLCJqdGkiOiI2MjcyY2NkMC1kMTdhLTQwNDEtODU1Yy00NDI2ZDgxYTI4ZWMiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6ImZiZDgyZDAzLTE0MjktNDIwOC04NzQ2LTI4NDQxNTQ2ZWQ5MSIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiIwMWJhYjMzZi01Zjk1LTQ1NGQtODc2MS05MTIwNThiMjY1NDEiLCJzZXNzaW9uX3N0YXRlIjoiNWJlZDMzYjEtMmM3ZC00NTM4LTgxMmEtMDkzNDA2MmZhNGJiIiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIklOVkVOVE9SWS1VUERBVEUiLCJPUkRFUi1DUkVBVEUiLCJPUkRFUi1WSUVXIiwiUFJPRFVDVC1DUkVBVEUiLCJQUk9EVUNULURFTEVURSIsIklOVkVOVE9SWS1DUkVBVEUiLCJPUkRFUi1ERUxFVEUiLCJQUk9EVUNULVVQREFURSIsIklOVkVOVE9SWS1WSUVXIiwiUFJPRFVDVC1WSUVXIiwiQURNSU4iLCJPUkRFUi1VUERBVEUiLCJJTlZFTlRPUlktREVMRVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6IjViZWQzM2IxLTJjN2QtNDUzOC04MTJhLTA5MzQwNjJmYTRiYiIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwicHJlZmVycmVkX3VzZXJuYW1lIjoiYmVhIn0.Ztq2D6ypsuQy-3wFZ97Ky6-PTBohH_IHqo-u7HLV3tOy99CUMKxZMU9mmTBcTORZSumBqFEWGvfQZ7qq7UBGLVEb0Gfo8Olp86hFkSW26VoMS4Ld6biPRUiX3VhXJ1o20h_xzZdlD019n3sPj33hPW7x2dYmbewWVQfX6i495ZNyLdNznvYCMkbR2nRLGqtWea4aZOZbpeFXaYDaSTIgSWLEI05tNzd3aMynGtVcHBuGkLj8NuDrIvgdZ7LSUIqM3pbapjbZ0wPKHO1gSTctiRHGu_D7pS-l4cnZn1huRnAwcRxYMF6mxkOliGsfr2ktxx-oUKcPLIEu44VqkQSsLQ',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TestGetSingleProductCall {
  static Future<ApiCallResponse> call({
    int? productID,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'testGetSingleProduct',
      apiUrl: 'https://dummyjson.com/products/$productID',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
