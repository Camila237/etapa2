import 'package:dartz/dartz.dart';
import 'package:package_fake_api_store/data/apiClient/api_error.dart';
abstract class ApiClient {
  Future<Either<ApiError, dynamic>> fetchData();
}