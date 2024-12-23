import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:package_fake_api_store/data/apiClient/api_client.dart';
import 'package:package_fake_api_store/data/apiClient/api_error.dart';
import 'package:package_fake_api_store/data/apiClient/http_client.dart';
import 'package:package_fake_api_store/data/models/user_model.dart';
import 'package:package_fake_api_store/utils/app_constants.dart';

/// * Implemtation of the second API consumption
class UsersApiService implements ApiClient {
  final HttpClient httpClient;

  UsersApiService(this.httpClient);

  @override
  Future<Either<ApiError, List<UserModel>>> fetchData() async{
    final Either<ApiError, http.Response>response = await httpClient.get('$appUrl/users/');
    return response.fold(
          (error) => Left(error),
          (data) {
        final List<dynamic> jsonList = json.decode(data.body);
        final List<UserModel>users = jsonList.map((json) => UserModel.fromJson(json)).toList();
        return Right(users);
      },
    );
  }
}