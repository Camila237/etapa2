// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      name: NameModel.fromJson(json['name'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      version: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'address': instance.address,
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'phone': instance.phone,
      '__v': instance.version,
    };
