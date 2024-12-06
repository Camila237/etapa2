/// * The GeolocationModel class is a model class that represents a geolocation.
/// * It contains information about the geolocation, such as the latitude and longitude.
class GeolocationModel{
  final String lat;
  final String long;

  GeolocationModel({
    required this.lat,
    required this.long,
  });

  /// * The fromJson method is a factory method that creates a GeolocationModel instance from a JSON object.
  factory GeolocationModel.fromJson(
      Map<String, dynamic> json) {
    return GeolocationModel(
      lat: json['lat'],
      long: json['long'],
    );
  }

  /// * The toJson method is a method that converts a GeolocationModel instance to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'long': long,
    };
  }

  @override
  String toString() {
    return 'GeolocationModel{lat: $lat, long: $long}';
  }
}