import 'package:json_annotation/json_annotation.dart';

part 'cart_product_model.g.dart';

/// * The CartProductModel class is a model class that represents a cart product.
/// * It contains information about the product ID and quantity.
@JsonSerializable()
class CartProductModel{
  final int productId;
  final int quantity;

  CartProductModel({
    required this.productId,
    required this.quantity,
  });

  /// * The fromJson method is a factory method that creates a CartProductModel instance from a JSON object.
  factory CartProductModel.fromJson(
      Map<String, dynamic> json) => _$CartProductModelFromJson(json);

  /// * The toJson method is a method that converts a CartProductModel instance to a JSON object.
  Map<String, dynamic> toJson() =>
      _$CartProductModelToJson(this);

  @override
  String toString() {
    return 'CartProductModel{productId: $productId, quantity: $quantity}';
  }
}