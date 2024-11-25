import 'package:json_annotation/json_annotation.dart';
import 'package:etapa2/entities/geolocation_model.dart';

part 'address_model.g.dart';

/// * The AddressModel class is a model class that represents an address.
/// * It contains information about the address, such as the geolocation, city, street, number, and zipcode.
@JsonSerializable()
class AddressModel{
  GeolocationModel geolocation;
  final String city;
  final String street;
  final int number;
  final String zipcode;

  AddressModel({
    required this.geolocation,
    required this.city,
    required this.street,
    required this.number,
    required this.zipcode,
  });


  /// * The fromJson method is a factory method that creates an AddressModel instance from a JSON object.
  factory AddressModel.fromJson(
      Map<String, dynamic> json) => _$AddressModelFromJson(json);

  /// * The toJson method is a method that converts an AddressModel instance to a JSON object.
  Map<String, dynamic> toJson() =>
      _$AddressModelToJson(this);

  @override
  String toString() {
    return 'AddressModel{geolocation: $geolocation, city: $city, street: $street, number: $number, zipcode: $zipcode}';
  }
}