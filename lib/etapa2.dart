import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:package_fake_api_store/data/apiClient/api_error.dart';
import 'package:package_fake_api_store/data/apiClient/http_client.dart';
import 'package:package_fake_api_store/data/entities/cart_model.dart';
import 'package:package_fake_api_store/data/entities/product_model.dart';
import 'package:package_fake_api_store/data/entities/user_model.dart';

/// * FetchProducts gets a list of products from the API and prints them to the console.
/// * This function uses the [ApiClient] client to make an HTTP request
/// * and get products. Then loops through the response and displays information
/// * about each product, including its name, price, and rating.
/// * If an error occurs, the server error message is displayed.
Future<void> fetchProducts() async {
  final HttpClient httpClient = HttpClient(http.Client());
  final ProductsApiService productsApiService = ProductsApiService(httpClient);
  print('--------------------------');
  print('Obteniendo productos...');
  final Either<ApiError, List<ProductModel>> response = await productsApiService.fetchData();
  response.fold(
        (ApiError error) => print(error.message),
        (List<ProductModel>products) {
          for (ProductModel product in products) {
            print('Nombre: ${product.title} - Precio: ${product.price} - Puntuación: ${product.rating.rate}');
          }
        },
  );
}

/// * FetchUsers gets a list of users from the API and prints them to the console.
/// * This function uses the [ApiClient] client to make an HTTP request
/// * and get users. Then loops through the response and displays information
/// * about each user, including their name and email.
/// * If an error occurs, the server error message is displayed.
Future<void> fetchUsers() async {
  final HttpClient httpClient = HttpClient(http.Client());
  final UsersApiService usersApiService = UsersApiService(httpClient);
  print('--------------------------');
  print('Obteniendo usuarios...');
  final  Either<ApiError, List<UserModel>> response = await usersApiService.fetchData();
  response.fold(
        (ApiError error) => print(error.message),
        (List<UserModel>users) {
          for (UserModel user in users) {
            print('Nombre: ${user.name.firstname} - Email: ${user.email}');
          }
        },
  );
}

/// * FetchCarts gets a list of carts from the API and prints them to the console.
/// * This function uses the [ApiClient] client to make an HTTP request
/// * and get carts. Then loops through the response and displays information
/// * about each cart, including the user ID and products.
/// * If an error occurs, the server error message is displayed.
Future<void> fetchCarts() async {
  final HttpClient httpClient = HttpClient(http.Client());
  final CartsApiService cartsApiService = CartsApiService(httpClient);
  print('--------------------------');
  print('Obteniendo carritos...');
  final Either<ApiError, List<CartModel>> response = await cartsApiService.fetchData();
  response.fold(
        (ApiError error) => print(error.message),
        (List<CartModel> carts) {
          for (CartModel cart in carts) {
            print('Usuario: ${cart.userId} - Productos: ${cart.products}');
          }
    },
  );
}