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
          'https://4b8d-219-75-69-73.ngrok-free.app/api/product/query?id=$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI5TllVWjhrZU9ubExJZDBhdE5IMWdVVzA4UkMzbEYtMExZQUxOc1NPZDRnIn0.eyJleHAiOjE3MTQzOTM0NzMsImlhdCI6MTcxNDM5MDQ3MywiYXV0aF90aW1lIjoxNzE0MzkwNDcwLCJqdGkiOiJkNjkzOTRhZS04MjM0LTRkYjctYTRjZS1jOWQ5OWJkOTRhNDUiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbInJlYWxtLW1hbmFnZW1lbnQiLCJiYWNrZW5kIiwiYnJva2VyIiwiYWNjb3VudCJdLCJzdWIiOiJmYzY0YWQ1YS0zYjJkLTQ2M2YtOTg2Yy1hZTg5OTZjMTQ0M2QiLCJ0eXAiOiJCZWFyZXIiLCJhenAiOiJmcm9udGVuZCIsIm5vbmNlIjoiYTY1ZDQzMWMtMDEyZS00Mzc5LTgwNWQtM2I4OTA3MjFkZjUxIiwic2Vzc2lvbl9zdGF0ZSI6IjBhZjY1YjZkLTBmMGItNGVhYy05ZGRlLTNlZjdlYTRmZDZjNiIsImFjciI6IjEiLCJhbGxvd2VkLW9yaWdpbnMiOlsiKiJdLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJkZWZhdWx0LXJvbGVzLXN1c2NvbXBhbnlyZWFsbSIsInVtYV9hdXRob3JpemF0aW9uIl19LCJyZXNvdXJjZV9hY2Nlc3MiOnsicmVhbG0tbWFuYWdlbWVudCI6eyJyb2xlcyI6WyJ2aWV3LXJlYWxtIiwidmlldy1pZGVudGl0eS1wcm92aWRlcnMiLCJtYW5hZ2UtaWRlbnRpdHktcHJvdmlkZXJzIiwiaW1wZXJzb25hdGlvbiIsInJlYWxtLWFkbWluIiwiY3JlYXRlLWNsaWVudCIsIm1hbmFnZS11c2VycyIsInF1ZXJ5LXJlYWxtcyIsInZpZXctYXV0aG9yaXphdGlvbiIsInF1ZXJ5LWNsaWVudHMiLCJxdWVyeS11c2VycyIsIm1hbmFnZS1ldmVudHMiLCJtYW5hZ2UtcmVhbG0iLCJ2aWV3LWV2ZW50cyIsInZpZXctdXNlcnMiLCJ2aWV3LWNsaWVudHMiLCJtYW5hZ2UtYXV0aG9yaXphdGlvbiIsIm1hbmFnZS1jbGllbnRzIiwicXVlcnktZ3JvdXBzIl19LCJiYWNrZW5kIjp7InJvbGVzIjpbIklOVkVOVE9SWS1VUERBVEUiLCJPUkRFUi1DUkVBVEUiLCJPUkRFUi1WSUVXIiwiUFJPRFVDVC1DUkVBVEUiLCJQUk9EVUNULURFTEVURSIsIklOVkVOVE9SWS1DUkVBVEUiLCJPUkRFUi1ERUxFVEUiLCJQUk9EVUNULVVQREFURSIsIklOVkVOVE9SWS1WSUVXIiwiUFJPRFVDVC1WSUVXIiwiQURNSU4iLCJPUkRFUi1VUERBVEUiLCJJTlZFTlRPUlktREVMRVRFIl19LCJicm9rZXIiOnsicm9sZXMiOlsicmVhZC10b2tlbiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsInZpZXctYXBwbGljYXRpb25zIiwidmlldy1jb25zZW50Iiwidmlldy1ncm91cHMiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsIm1hbmFnZS1jb25zZW50IiwiZGVsZXRlLWFjY291bnQiLCJ2aWV3LXByb2ZpbGUiXX0sImZyb250ZW5kIjp7InJvbGVzIjpbIkNVU1RPTUVSIiwiQURNSU4iLCJTQUxFUyJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgZW1haWwiLCJzaWQiOiIwYWY2NWI2ZC0wZjBiLTRlYWMtOWRkZS0zZWY3ZWE0ZmQ2YzYiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJNYXJ5IFRhbiIsInByZWZlcnJlZF91c2VybmFtZSI6Im1hcnkiLCJnaXZlbl9uYW1lIjoiTWFyeSIsImZhbWlseV9uYW1lIjoiVGFuIn0.MXmlrpirzqeaMW7TltrcuExanywau1S3ihISsKGd7qliKip194HAIsXmKM7RpcJJujUCDvkzW_L108La4qglagNdznXoEleuCElHFojj8vJqsSZV5I7BH99DOtxerbrqACm_qqGjTpWYiO9X5tEb9GCmQbeSn5g-bg_bXkewqzT80n20rAFjc4BuPrbT_XjYaqYjH2jZ63QcGNKXBqFxaP_0CrK0q1n6O9npjQcDrbvLerW2xVpaBJnSUujj2--G_s-Xpx0ZYjpx1q97kOvO3g8wPdbON2jnl8tkpFE1rWvWrWuz4Mh795U6_rEpEjpH9hmEFXY5HhInJctyv6NEpQ',
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
    String? id =
        '6627cb7576c2ba5b31752377,6627cb7576c2ba5b31752377,6627cb7576c2ba5b31752377,6627cb7576c2ba5b31752377,6627ea4892dcda3154c8acfe,6627ea4892dcda3154c8acfe,6627e68392dcda3154c8acfc,6627ea4892dcda3154c8acfe,6627cb7576c2ba5b31752377,6627cb7576c2ba5b31752377,6627ea4892dcda3154c8acfe',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'queryProductByIDToTestInventory',
      apiUrl:
          'https://3e6d-103-6-150-177.ngrok-free.app/api/product/query?id=$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJfZ1VlQV9JQjNpS1VHZVk2WkdIUVdLblcyY1Y1VEtUcEFCeklQZy1qLUxzIn0.eyJleHAiOjE3MTQzMDA4OTcsImlhdCI6MTcxNDMwMDU5NywiYXV0aF90aW1lIjoxNzE0Mjk5ODI4LCJqdGkiOiJmMzkwZWU1MS0xMTI3LTRhM2UtYjEyZi0zMmNmNmM4N2FkMmIiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6IjIxYzA5OTcwLTU3OTYtNDIwMS1iNWE5LTJhOTU5OWM5ODliNCIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiI3MTkyYTI2MC0wZTU5LTQyMzAtODIwOS1jMWIxN2RlM2ZmNjQiLCJzZXNzaW9uX3N0YXRlIjoiOTU2YWUyYmQtOWViOS00YWMwLWE2MmQtNDM1ZmM1MTEzNTBhIiwiYWNyIjoiMCIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIklOVkVOVE9SWS1VUERBVEUiLCJPUkRFUi1DUkVBVEUiLCJPUkRFUi1WSUVXIiwiUFJPRFVDVC1DUkVBVEUiLCJQUk9EVUNULURFTEVURSIsIklOVkVOVE9SWS1DUkVBVEUiLCJPUkRFUi1ERUxFVEUiLCJQUk9EVUNULVVQREFURSIsIklOVkVOVE9SWS1WSUVXIiwiUFJPRFVDVC1WSUVXIiwiQURNSU4iLCJPUkRFUi1VUERBVEUiLCJJTlZFTlRPUlktREVMRVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6Ijk1NmFlMmJkLTllYjktNGFjMC1hNjJkLTQzNWZjNTExMzUwYSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwicHJlZmVycmVkX3VzZXJuYW1lIjoiYmVhIn0.GVRDbRgTVB53x25P8Uh6CqyjI_WC130r87bNvprfi6Ac8QeK0XaiHTUJezWRR2NR7fcUohn5_loTbj60gr6vYsIl1_JzMS7OGgduquDsLBBZzHGqOVy6AD8vwY0eDdiH_qUF7Vnpff4GxKCw6AbrQi2fB6OcBEEbPnhBEKwwXhjiOHgcBaQD9m4iBVOZn2PoM5Ws8MAMZ6claF6Ep8VPSOljSCsVZMDt4oBF7B9Y3GkGOfSf4BcptOmK6RwzQJKENmfcqQTIo1t9K-vHjV5ITp9JjcYeofksJx4qbZ21tgtK5xzP1IwD_IJ06gQRhzs3B7AZWCLGdMXZ0DAnzpLIuA',
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
  static List<String>? getAllProductNames(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SignInCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? clientId = 'frontend',
    String? grantType = 'password',
    String? scope = 'openid',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Sign In',
      apiUrl:
          'https://142f-219-75-69-73.ngrok-free.app/realms/SusCompanyRealm/protocol/openid-connect/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'client_id': clientId,
        'grant_type': grantType,
        'scope': scope,
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

  static String? jwt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

class CreateProductCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
 
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateProduct',
      apiUrl: 'https://4b8d-219-75-69-73.ngrok-free.app/api/product',
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
      apiUrl: 'https://524f-219-75-69-73.ngrok-free.app/api/product',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJMTThmeFVtTjQwNmlPZnhFNGd2RWlxdEVUdFVySEdnZm84bUJ4cFNuUmI0In0.eyJleHAiOjE3MTQyMzk1ODksImlhdCI6MTcxNDIzOTI4OSwianRpIjoiYzM2NmIwYjctNDkyMS00MjlhLTgzMTUtOTcxN2M0OWRlODI0IiwiaXNzIjoiaHR0cDovL2tleWNsb2FrOjgwODAvcmVhbG1zL1N1c0NvbXBhbnlSZWFsbSIsImF1ZCI6WyJiYWNrZW5kIiwiYWNjb3VudCJdLCJzdWIiOiIzZDcxNjBiNC03ODk4LTQxYjItODgyZS0yNTU4OTA2OTM2N2QiLCJ0eXAiOiJCZWFyZXIiLCJhenAiOiJmcm9udGVuZCIsInNlc3Npb25fc3RhdGUiOiI1ZGVmNzkzZC0wMWE0LTRhZDMtODNhNS1mMTQ5MzJiMDEzNDUiLCJhY3IiOiIxIiwiYWxsb3dlZC1vcmlnaW5zIjpbIioiXSwicmVhbG1fYWNjZXNzIjp7InJvbGVzIjpbIm9mZmxpbmVfYWNjZXNzIiwiZGVmYXVsdC1yb2xlcy1zdXNjb21wYW55cmVhbG0iLCJ1bWFfYXV0aG9yaXphdGlvbiJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImJhY2tlbmQiOnsicm9sZXMiOlsiUFJPRFVDVC1ERUxFVEUiLCJJTlZFTlRPUlktQ1JFQVRFIiwiT1JERVItREVMRVRFIiwiSU5WRU5UT1JZLVVQREFURSIsIlBST0RVQ1QtVVBEQVRFIiwiUFJPRFVDVC1WSUVXIiwiQURNSU4iLCJJTlZFTlRPUlktREVMRVRFIiwiUFJPRFVDVC1DUkVBVEUiXX0sImZyb250ZW5kIjp7InJvbGVzIjpbIkFETUlOIl19LCJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX19LCJzY29wZSI6Im9wZW5pZCBwcm9maWxlIGVtYWlsIiwic2lkIjoiNWRlZjc5M2QtMDFhNC00YWQzLTgzYTUtZjE0OTMyYjAxMzQ1IiwiZW1haWxfdmVyaWZpZWQiOmZhbHNlLCJuYW1lIjoibWFyeSB0YW4iLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJtYXJ5IiwiZ2l2ZW5fbmFtZSI6Im1hcnkiLCJmYW1pbHlfbmFtZSI6InRhbiJ9.OTlPfbFUZBS0GQmkaKKcqLuOHcf7fLhbgi821CGmnyeQp4tevTLVC-c_7tt3lehKEtTPOo7-QwoWre8jNp0fOQIRO2FxEfT6vHrRRZe_lUWIqamcgxEUKuVy8Ax6xSZqjGZD0exZIEaJSvJQc5zQd2BzJGeCLPJTVNJaIMXEyoQEg4as2s_HAb_GYtdH9EnazHhMQl04AvQ-eB1sQcB_B7Pl7qEGPP-WWfADKgaELTABO8BAf_IaQk__e3UFkH3H1ezNTS3mANUHJDqOdSvimPpAsvhYgK_C2-2p3Tkg-wRwNTmfcu5az-98kK4jCzZtmyE9RMrZG8OD40eVYYPx1g',
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
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProductsAPI',
      apiUrl: 'https://4b8d-219-75-69-73.ngrok-free.app/api/product',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Accept-Encoding': 'gzip, deflate, br, zstd',
        'Accept-Language': 'en-US,en;q=0.9',
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI5TllVWjhrZU9ubExJZDBhdE5IMWdVVzA4UkMzbEYtMExZQUxOc1NPZDRnIn0.eyJleHAiOjE3MTQzOTM0NzMsImlhdCI6MTcxNDM5MDQ3MywiYXV0aF90aW1lIjoxNzE0MzkwNDcwLCJqdGkiOiJkNjkzOTRhZS04MjM0LTRkYjctYTRjZS1jOWQ5OWJkOTRhNDUiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbInJlYWxtLW1hbmFnZW1lbnQiLCJiYWNrZW5kIiwiYnJva2VyIiwiYWNjb3VudCJdLCJzdWIiOiJmYzY0YWQ1YS0zYjJkLTQ2M2YtOTg2Yy1hZTg5OTZjMTQ0M2QiLCJ0eXAiOiJCZWFyZXIiLCJhenAiOiJmcm9udGVuZCIsIm5vbmNlIjoiYTY1ZDQzMWMtMDEyZS00Mzc5LTgwNWQtM2I4OTA3MjFkZjUxIiwic2Vzc2lvbl9zdGF0ZSI6IjBhZjY1YjZkLTBmMGItNGVhYy05ZGRlLTNlZjdlYTRmZDZjNiIsImFjciI6IjEiLCJhbGxvd2VkLW9yaWdpbnMiOlsiKiJdLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJkZWZhdWx0LXJvbGVzLXN1c2NvbXBhbnlyZWFsbSIsInVtYV9hdXRob3JpemF0aW9uIl19LCJyZXNvdXJjZV9hY2Nlc3MiOnsicmVhbG0tbWFuYWdlbWVudCI6eyJyb2xlcyI6WyJ2aWV3LXJlYWxtIiwidmlldy1pZGVudGl0eS1wcm92aWRlcnMiLCJtYW5hZ2UtaWRlbnRpdHktcHJvdmlkZXJzIiwiaW1wZXJzb25hdGlvbiIsInJlYWxtLWFkbWluIiwiY3JlYXRlLWNsaWVudCIsIm1hbmFnZS11c2VycyIsInF1ZXJ5LXJlYWxtcyIsInZpZXctYXV0aG9yaXphdGlvbiIsInF1ZXJ5LWNsaWVudHMiLCJxdWVyeS11c2VycyIsIm1hbmFnZS1ldmVudHMiLCJtYW5hZ2UtcmVhbG0iLCJ2aWV3LWV2ZW50cyIsInZpZXctdXNlcnMiLCJ2aWV3LWNsaWVudHMiLCJtYW5hZ2UtYXV0aG9yaXphdGlvbiIsIm1hbmFnZS1jbGllbnRzIiwicXVlcnktZ3JvdXBzIl19LCJiYWNrZW5kIjp7InJvbGVzIjpbIklOVkVOVE9SWS1VUERBVEUiLCJPUkRFUi1DUkVBVEUiLCJPUkRFUi1WSUVXIiwiUFJPRFVDVC1DUkVBVEUiLCJQUk9EVUNULURFTEVURSIsIklOVkVOVE9SWS1DUkVBVEUiLCJPUkRFUi1ERUxFVEUiLCJQUk9EVUNULVVQREFURSIsIklOVkVOVE9SWS1WSUVXIiwiUFJPRFVDVC1WSUVXIiwiQURNSU4iLCJPUkRFUi1VUERBVEUiLCJJTlZFTlRPUlktREVMRVRFIl19LCJicm9rZXIiOnsicm9sZXMiOlsicmVhZC10b2tlbiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsInZpZXctYXBwbGljYXRpb25zIiwidmlldy1jb25zZW50Iiwidmlldy1ncm91cHMiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsIm1hbmFnZS1jb25zZW50IiwiZGVsZXRlLWFjY291bnQiLCJ2aWV3LXByb2ZpbGUiXX0sImZyb250ZW5kIjp7InJvbGVzIjpbIkNVU1RPTUVSIiwiQURNSU4iLCJTQUxFUyJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgZW1haWwiLCJzaWQiOiIwYWY2NWI2ZC0wZjBiLTRlYWMtOWRkZS0zZWY3ZWE0ZmQ2YzYiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJNYXJ5IFRhbiIsInByZWZlcnJlZF91c2VybmFtZSI6Im1hcnkiLCJnaXZlbl9uYW1lIjoiTWFyeSIsImZhbWlseV9uYW1lIjoiVGFuIn0.MXmlrpirzqeaMW7TltrcuExanywau1S3ihISsKGd7qliKip194HAIsXmKM7RpcJJujUCDvkzW_L108La4qglagNdznXoEleuCElHFojj8vJqsSZV5I7BH99DOtxerbrqACm_qqGjTpWYiO9X5tEb9GCmQbeSn5g-bg_bXkewqzT80n20rAFjc4BuPrbT_XjYaqYjH2jZ63QcGNKXBqFxaP_0CrK0q1n6O9npjQcDrbvLerW2xVpaBJnSUujj2--G_s-Xpx0ZYjpx1q97kOvO3g8wPdbON2jnl8tkpFE1rWvWrWuz4Mh795U6_rEpEjpH9hmEFXY5HhInJctyv6NEpQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? price(dynamic response) => (getJsonField(
        response,
        r'''$[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetAllProductsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllProducts',
      apiUrl: 'http://7911-103-6-150-177.ngrok-free.app/api/product',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Accept-Encoding': 'gzip, deflate, br, zstd',
        'Accept-Language': 'en-US,en;q=0.9',
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIzR201R1NuNE1LNXlHdGIwTUc4U1U3NHFsOWtiUlJTUVVlM3hSUnVXN1dvIn0.eyJleHAiOjE3MTQ0MTA2NjQsImlhdCI6MTcxNDQxMDM2NCwiYXV0aF90aW1lIjoxNzE0NDA3NjY2LCJqdGkiOiIwYzkzMjA1MS03MTUxLTQ0YTQtYWIzNy01YWVmNWYwMjNlMzMiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbInJlYWxtLW1hbmFnZW1lbnQiLCJiYWNrZW5kIiwiYnJva2VyIiwiYWNjb3VudCJdLCJzdWIiOiI2NTM0NzRkOC0yNzgxLTRjOGItOGFhYi1jMWE4MDhlM2E2NTAiLCJ0eXAiOiJCZWFyZXIiLCJhenAiOiJmcm9udGVuZCIsIm5vbmNlIjoiMDNkODMwNDItZjQxOC00ZDI4LTlhOTAtNjc1NWNhNGQ0MjNiIiwic2Vzc2lvbl9zdGF0ZSI6IjVhZDkyZTdlLTcyNjYtNDgyNS1hZTk4LTZiODllNzYyOTdlNCIsImFjciI6IjAiLCJhbGxvd2VkLW9yaWdpbnMiOlsiKiJdLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJkZWZhdWx0LXJvbGVzLXN1c2NvbXBhbnlyZWFsbSIsInVtYV9hdXRob3JpemF0aW9uIl19LCJyZXNvdXJjZV9hY2Nlc3MiOnsicmVhbG0tbWFuYWdlbWVudCI6eyJyb2xlcyI6WyJ2aWV3LXJlYWxtIiwidmlldy1pZGVudGl0eS1wcm92aWRlcnMiLCJtYW5hZ2UtaWRlbnRpdHktcHJvdmlkZXJzIiwiaW1wZXJzb25hdGlvbiIsInJlYWxtLWFkbWluIiwiY3JlYXRlLWNsaWVudCIsIm1hbmFnZS11c2VycyIsInF1ZXJ5LXJlYWxtcyIsInZpZXctYXV0aG9yaXphdGlvbiIsInF1ZXJ5LWNsaWVudHMiLCJxdWVyeS11c2VycyIsIm1hbmFnZS1ldmVudHMiLCJtYW5hZ2UtcmVhbG0iLCJ2aWV3LWV2ZW50cyIsInZpZXctdXNlcnMiLCJ2aWV3LWNsaWVudHMiLCJtYW5hZ2UtYXV0aG9yaXphdGlvbiIsIm1hbmFnZS1jbGllbnRzIiwicXVlcnktZ3JvdXBzIl19LCJiYWNrZW5kIjp7InJvbGVzIjpbIklOVkVOVE9SWS1VUERBVEUiLCJPUkRFUi1DUkVBVEUiLCJPUkRFUi1WSUVXIiwiUFJPRFVDVC1DUkVBVEUiLCJQUk9EVUNULURFTEVURSIsIklOVkVOVE9SWS1DUkVBVEUiLCJPUkRFUi1ERUxFVEUiLCJQUk9EVUNULVVQREFURSIsIklOVkVOVE9SWS1WSUVXIiwiUFJPRFVDVC1WSUVXIiwiQURNSU4iLCJPUkRFUi1VUERBVEUiLCJJTlZFTlRPUlktREVMRVRFIl19LCJicm9rZXIiOnsicm9sZXMiOlsicmVhZC10b2tlbiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsInZpZXctYXBwbGljYXRpb25zIiwidmlldy1jb25zZW50Iiwidmlldy1ncm91cHMiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsIm1hbmFnZS1jb25zZW50IiwiZGVsZXRlLWFjY291bnQiLCJ2aWV3LXByb2ZpbGUiXX0sImZyb250ZW5kIjp7InJvbGVzIjpbIkNVU1RPTUVSIiwiQURNSU4iLCJTQUxFUyJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgZW1haWwiLCJzaWQiOiI1YWQ5MmU3ZS03MjY2LTQ4MjUtYWU5OC02Yjg5ZTc2Mjk3ZTQiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsInByZWZlcnJlZF91c2VybmFtZSI6ImJlYSJ9.LSP3w1jSVYqbwyjwDsI6gP6FsEBJwAQjliyDL2htpvHIIHPlT0Vdp4dyqepfkQMQXx1YDbX2ZqN5DOpeIaPvqCNH1QhicDzra_PV8Dr0l-FO8tRG7h_DDYBLWDcjgm98VsPSU0fzzU4tVpdKwaRouUCUZ16qXt3ZjSZjgjunsn5Pom3_djlD1KozyPATnQXFGMrhO-RVtJVxvpNkx7y_lWNtbPbw_1egpw2VPzNIPoAc0KUsZLgsY3wnVcf2j7xQ9MXq3AYDMUjMHCW40uWOAfx0KnsAqFWZf7ixeOTwisIOoEeFS4F8hzLLQ9en2ugLBgaNJOeHAyHdZgT0gbTOSA',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? getProductNames(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? getAllProducts(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetAllInventoryCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllInventory',
      apiUrl: 'http://7911-103-6-150-177.ngrok-free.app/api/inventory',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Accept-Encoding': 'gzip, deflate, br, zstd',
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIzR201R1NuNE1LNXlHdGIwTUc4U1U3NHFsOWtiUlJTUVVlM3hSUnVXN1dvIn0.eyJleHAiOjE3MTQ0MDk4OTcsImlhdCI6MTcxNDQwOTU5NywiYXV0aF90aW1lIjoxNzE0NDA3NjY2LCJqdGkiOiIxNWU0OTVmYi03YTUzLTQxMGUtOGQzNC1jOTFmY2I2OTBiZmIiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbInJlYWxtLW1hbmFnZW1lbnQiLCJiYWNrZW5kIiwiYnJva2VyIiwiYWNjb3VudCJdLCJzdWIiOiI2NTM0NzRkOC0yNzgxLTRjOGItOGFhYi1jMWE4MDhlM2E2NTAiLCJ0eXAiOiJCZWFyZXIiLCJhenAiOiJmcm9udGVuZCIsIm5vbmNlIjoiNTMzODY4NmMtNjEyZS00NmQ5LThiYWYtMGUyMDJjNWMxMjBmIiwic2Vzc2lvbl9zdGF0ZSI6IjVhZDkyZTdlLTcyNjYtNDgyNS1hZTk4LTZiODllNzYyOTdlNCIsImFjciI6IjAiLCJhbGxvd2VkLW9yaWdpbnMiOlsiKiJdLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJkZWZhdWx0LXJvbGVzLXN1c2NvbXBhbnlyZWFsbSIsInVtYV9hdXRob3JpemF0aW9uIl19LCJyZXNvdXJjZV9hY2Nlc3MiOnsicmVhbG0tbWFuYWdlbWVudCI6eyJyb2xlcyI6WyJ2aWV3LXJlYWxtIiwidmlldy1pZGVudGl0eS1wcm92aWRlcnMiLCJtYW5hZ2UtaWRlbnRpdHktcHJvdmlkZXJzIiwiaW1wZXJzb25hdGlvbiIsInJlYWxtLWFkbWluIiwiY3JlYXRlLWNsaWVudCIsIm1hbmFnZS11c2VycyIsInF1ZXJ5LXJlYWxtcyIsInZpZXctYXV0aG9yaXphdGlvbiIsInF1ZXJ5LWNsaWVudHMiLCJxdWVyeS11c2VycyIsIm1hbmFnZS1ldmVudHMiLCJtYW5hZ2UtcmVhbG0iLCJ2aWV3LWV2ZW50cyIsInZpZXctdXNlcnMiLCJ2aWV3LWNsaWVudHMiLCJtYW5hZ2UtYXV0aG9yaXphdGlvbiIsIm1hbmFnZS1jbGllbnRzIiwicXVlcnktZ3JvdXBzIl19LCJiYWNrZW5kIjp7InJvbGVzIjpbIklOVkVOVE9SWS1VUERBVEUiLCJPUkRFUi1DUkVBVEUiLCJPUkRFUi1WSUVXIiwiUFJPRFVDVC1DUkVBVEUiLCJQUk9EVUNULURFTEVURSIsIklOVkVOVE9SWS1DUkVBVEUiLCJPUkRFUi1ERUxFVEUiLCJQUk9EVUNULVVQREFURSIsIklOVkVOVE9SWS1WSUVXIiwiUFJPRFVDVC1WSUVXIiwiQURNSU4iLCJPUkRFUi1VUERBVEUiLCJJTlZFTlRPUlktREVMRVRFIl19LCJicm9rZXIiOnsicm9sZXMiOlsicmVhZC10b2tlbiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsInZpZXctYXBwbGljYXRpb25zIiwidmlldy1jb25zZW50Iiwidmlldy1ncm91cHMiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsIm1hbmFnZS1jb25zZW50IiwiZGVsZXRlLWFjY291bnQiLCJ2aWV3LXByb2ZpbGUiXX0sImZyb250ZW5kIjp7InJvbGVzIjpbIkNVU1RPTUVSIiwiQURNSU4iLCJTQUxFUyJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgZW1haWwiLCJzaWQiOiI1YWQ5MmU3ZS03MjY2LTQ4MjUtYWU5OC02Yjg5ZTc2Mjk3ZTQiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsInByZWZlcnJlZF91c2VybmFtZSI6ImJlYSJ9.EoB9MoJKl_yHj-FvOPtfVsgNd33BhF2AWzuwwQYMbJp5ZSx8TvFlFKc747bH8vI04qCZHZgZQNHjb-wS28HFGpA36lOcDN4YAD-ws6GzJSBnECwzUAEiC2sUsYoLx7LlAetB6fnxAvUqnEB0LQER3Gd8bISOMjlK1hVr3JjBzOpTYz8dOJUy9VXzAzZgzVRLpOEfXdUo7VADyHhQF3UnZSmWsMqTxCYsy10w74BOuZg_s9P4zOe6bIXTgbuMfHQE67MHvxPCLvxvjo-nFPE6X26JdV_NGqcAACla9YM3PXOaoORR_UGoKxLfHY0uh811MT2vtVj5NsaXZ2FvGBnNyA',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic getAllInventory(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  static List<String>? getOwners(dynamic response) => (getJsonField(
        response,
        r'''$[:].owner''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CreateInventoryCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "skuCode": "4324",
  "quantity": 100,
  "productId": "662ea3ea086f510b0d9fa715"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createInventory',
      apiUrl: 'http://0fe4-103-6-150-177.ngrok-free.app/api/inventory',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Accept-Encoding': 'gzip, deflate, br, zstd',
        'Accept-Language': 'en-US,en;q=0.9',
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIzaWsxdnBTcmJTU2JvTHUzVTEzRzloTTh0aVpIYTlSVGZFRXk3OU9HOG5jIn0.eyJleHAiOjE3MTQzNjY1MTQsImlhdCI6MTcxNDM2NjIxNCwiYXV0aF90aW1lIjoxNzE0MzY1MzAwLCJqdGkiOiJhY2ZkZjYxNC1kNTRiLTQ1MjktYTUxNC0yZmRiN2IxNWUxNTUiLCJpc3MiOiJodHRwOi8va2V5Y2xvYWs6ODA4MC9yZWFsbXMvU3VzQ29tcGFueVJlYWxtIiwiYXVkIjpbImJhY2tlbmQiLCJhY2NvdW50Il0sInN1YiI6IjMzMzFmMjBjLTM3NDAtNDFiMC05NGYyLTI4MzEzNjU1YmNlMCIsInR5cCI6IkJlYXJlciIsImF6cCI6ImZyb250ZW5kIiwibm9uY2UiOiIxZjY5ZmU3Zi1iNjNiLTQ4YWMtOTg4Zi0wOTdmM2JhM2NhZGMiLCJzZXNzaW9uX3N0YXRlIjoiMTlhNzhkZGQtY2IzNi00NzRlLWE4N2MtZjY1YmRkOWFmYTRiIiwiYWNyIjoiMCIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc3VzY29tcGFueXJlYWxtIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJiYWNrZW5kIjp7InJvbGVzIjpbIklOVkVOVE9SWS1VUERBVEUiLCJPUkRFUi1DUkVBVEUiLCJPUkRFUi1WSUVXIiwiUFJPRFVDVC1DUkVBVEUiLCJQUk9EVUNULURFTEVURSIsIklOVkVOVE9SWS1DUkVBVEUiLCJPUkRFUi1ERUxFVEUiLCJQUk9EVUNULVVQREFURSIsIklOVkVOVE9SWS1WSUVXIiwiUFJPRFVDVC1WSUVXIiwiQURNSU4iLCJPUkRFUi1VUERBVEUiLCJJTlZFTlRPUlktREVMRVRFIl19LCJmcm9udGVuZCI6eyJyb2xlcyI6WyJBRE1JTiJdfSwiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsInNpZCI6IjE5YTc4ZGRkLWNiMzYtNDc0ZS1hODdjLWY2NWJkZDlhZmE0YiIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwicHJlZmVycmVkX3VzZXJuYW1lIjoiYmVhIn0.JhXzsRCw2nj_97_pwlNpEIj386c20QtX7xnYK2Uv7gGSGrb0OJDXyokg_3MZ-YnE3BnxWVc4WUSjy0wYZbyPp89wMdfHRl8OLUTh43v4wreoBVXiHHZtB16g_UNji3-QdYEsTTF61AKWIpO9y_mwv4qEDXQY5USIzh81iGlcxHSJ2wiQ-neYERTGkVvigsEbsfBzNa5qnX85DQULhZkCJ6Rlm4TBsCoJ7sZTfmTNU_jr8TEy2P3jn0wQs_bidZolZO3JHdjua9VfFv3rpgG_P185JIDrEq2Dc_T-ds5IlqcH3UUDG--9ZwEKc32PFEVQC7iuikF94uttanrKlNFckw',
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
