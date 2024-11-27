import 'package:json_annotation/json_annotation.dart';

part 'name_model.g.dart';

/// * The NameModel class is a model class that represents a name.
/// * It contains information about the name, such as the first name and last name.
@JsonSerializable()
class NameModel{
  final String firstname;
  final String lastname;

  NameModel({
    required this.firstname,
    required this.lastname,
  });

  /// * The fromJson method is a factory method that creates a NameModel instance from a JSON object.
  factory NameModel.fromJson(
      Map<String, dynamic> json) => _$NameModelFromJson(json);

  /// * The toJson method is a method that converts a NameModel instance to a JSON object.
  Map<String, dynamic> toJson() =>
      _$NameModelToJson(this);

  @override
  String toString() {
    return 'NameModel{firstname: $firstname, lastname: $lastname}';
  }
}