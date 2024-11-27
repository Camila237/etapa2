import 'package:json_annotation/json_annotation.dart';
import 'package:etapa2/data/entities/address_model.dart';
import 'package:etapa2/data/entities/name_model.dart';

part 'user_model.g.dart';

/// * The UserModel class is a model class that represents a user.
/// * It contains information about the user, such as its ID, email, username, password, name, phone, and address.
@JsonSerializable()
class UserModel{
  final AddressModel address;
  final int id;
  final String email;
  final String username;
  final String password;
  final NameModel name;
  final String phone;
  @JsonKey(name: '__v')
  final int version;

  UserModel({
    required this.address,
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.name,
    required this.phone,
    required this.version,
  });

  /// * The fromJson method is a factory method that creates a UserModel instance from a JSON object.
  factory UserModel.fromJson(
      Map<String, dynamic> json) => _$UserModelFromJson(json);

  /// * The toJson method is a method that converts a UserModel instance to a JSON object.
  Map<String, dynamic> toJson() =>
      _$UserModelToJson(this);

  @override
  String toString() {
    return 'UserModel{address: $address, id: $id, email: $email, username: $username, password: $password, name: $name, phone: $phone, version: $version}';
  }
}