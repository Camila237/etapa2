import 'package:dio/dio.dart';
import 'package:etapa2/data/apiClient/server_error.dart';
import 'package:etapa2/data/entities/cart_model.dart';
import 'package:etapa2/data/entities/product_model.dart';
import 'package:etapa2/data/entities/user_model.dart';
import 'package:etapa2/utils/app_constants.dart';
import 'package:etapa2/utils/dimens.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

///  * The ApiClient class is an abstract class that represents an API client.
/// * It contains methods to get products, users, and carts from the API.
/// * The methods use the Retrofit library to make HTTP requests to the API.
/// * If an error occurs, the server error message is displayed.

@RestApi()
abstract class ApiClient {
  static Duration get _defaultTime => Duration(seconds: kSize20.toInt());
  static final Dio dio = Dio();

  factory ApiClient() {
    dio.options = BaseOptions(
      baseUrl: appUrl,
      receiveTimeout: _defaultTime,
      connectTimeout: _defaultTime,
      sendTimeout: _defaultTime,
      contentType: 'application/json',
    );
    dio.interceptors.clear();
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          ServerError(error: error);
          handler.next(error);
        },
      ),
    );
    return _ApiClient(dio);
  }

  // --------- ENDPOINTS ---------

  /// * Get a list of products from the API.
  @GET('/products/')
  Future<List<ProductModel>> getProducts();

  /// * Get a list of users from the API.
  @GET('/users/')
  Future<List<UserModel>> getUsers();

  /// * Get a list of carts from the API.
  @GET('/carts/')
  Future<List<CartModel>> getCarts();
}
