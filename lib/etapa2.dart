import 'package:etapa2/data/apiClient/api_client.dart';

/// * FetchProducts gets a list of products from the API and prints them to the console.
/// * This function uses the [ApiClient] client to make an HTTP request
/// * and get products. Then loops through the response and displays information
/// * about each product, including its name, price, and rating.
/// * If an error occurs, the server error message is displayed.
Future<void> fetchProducts() async {
  ApiClient apiClient = ApiClient();
  try {
    print('--------------------------');
    print('Obteniendo productos...');
    final response = await apiClient.getProducts();
    for (var product in response) {
      print('Nombre: ${product.title} - Precio: ${product.price} - Puntuación: ${product.rating.rate}');
    }
  } catch (e) {
    print('Error al obtener los productos: $e');
  }
}

/// * FetchUsers gets a list of users from the API and prints them to the console.
/// * This function uses the [ApiClient] client to make an HTTP request
/// * and get users. Then loops through the response and displays information
/// * about each user, including their name and email.
/// * If an error occurs, the server error message is displayed.
Future<void> fetchUsers() async {
  ApiClient apiClient = ApiClient();
  try {
    print('--------------------------');
    print('Obteniendo usuarios...');
    final response = await apiClient.getUsers();
    for (var user in response) {
      print('Nombre: ${user.name.firstname} - Email: ${user.email}');
    }
  } catch (e) {
    print('Error al obtener los usuarios: $e');
  }
}

/// * FetchCarts gets a list of carts from the API and prints them to the console.
/// * This function uses the [ApiClient] client to make an HTTP request
/// * and get carts. Then loops through the response and displays information
/// * about each cart, including the user ID and products.
/// * If an error occurs, the server error message is displayed.
Future<void> fetchCarts() async {
  ApiClient apiClient = ApiClient();
  try {
    print('--------------------------');
    print('Obteniendo carritos...');
    final response = await apiClient.getCarts();
    for (var cart in response) {
      print('Usuario: ${cart.userId} - Productos: ${cart.products}');
    }
  } catch (e) {
    print('Error al obtener los usuarios: $e');
  }
}