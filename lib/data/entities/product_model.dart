import 'package:json_annotation/json_annotation.dart';
import 'package:etapa2/data/entities/rating_model.dart';

part 'product_model.g.dart';

/// * The ProductModel class is a model class that represents a product.
/// * It contains information about the product, such as its ID, title, description, category, price, image, and rating.
@JsonSerializable()
class ProductModel{
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final String image;
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.image,
    required this.rating,
  });

  ProductModel copyWith({
    int? id,
    String? title,
    String? description,
    double? price,
    String? image,
    RatingModel? rating,
    String? category,
  }) {
    return ProductModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      image: image ?? this.image,
      rating: rating ?? this.rating,
      category: category ?? this.category,
    );
  }

  /// * The fromJson method is a factory method that creates a ProductModel instance from a JSON object.
  factory ProductModel.fromJson(
      Map<String, dynamic> json) => _$ProductModelFromJson(json);

  /// * The toJson method is a method that converts a ProductModel instance to a JSON object.
  Map<String, dynamic> toJson() =>
      _$ProductModelToJson(this);

  @override
  String toString() {
    return 'ProductModel{id: $id, title: $title, description: $description, category: $category, price: $price, image: $image, rating: $rating}';
  }
}