
abstract class BaseApiServices {
  Future<dynamic> getAPI(String url);

  Future<dynamic> postApi(dynamic data, String url);
}