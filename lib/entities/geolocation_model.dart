import 'package:json_annotation/json_annotation.dart';

part 'geolocation_model.g.dart';

/// * The GeolocationModel class is a model class that represents a geolocation.
/// * It contains information about the geolocation, such as the latitude and longitude.
@JsonSerializable()
class GeolocationModel{
  final String lat;
  final String long;

  GeolocationModel({
    required this.lat,
    required this.long,
  });

  /// * The fromJson method is a factory method that creates a GeolocationModel instance from a JSON object.
  factory GeolocationModel.fromJson(
      Map<String, dynamic> json) => _$GeolocationModelFromJson(json);

  /// * The toJson method is a method that converts a GeolocationModel instance to a JSON object.
  Map<String, dynamic> toJson() =>
      _$GeolocationModelToJson(this);

  @override
  String toString() {
    return 'GeolocationModel{lat: $lat, long: $long}';
  }
}