import 'package:json_annotation/json_annotation.dart';
import 'package:etapa2/data/entities/cart_product_model.dart';

part 'cart_model.g.dart';

/// * The CartModel class is a model class that represents a cart.
/// * It contains information about the cart, such as its ID, user ID, date, and products.
@JsonSerializable()
class CartModel{
 final int id;
 final int userId;
 final String date;
 final List<CartProductModel> products;

  CartModel({
    required this.id,
    required this.userId,
    required this.date,
    required this.products,
  });

  /// * The fromJson method is a factory method that creates a CartModel instance from a JSON object.
 factory CartModel.fromJson(
     Map<String, dynamic> json) => _$CartModelFromJson(json);

 /// * The toJson method is a method that converts a CartModel instance to a JSON object.
 Map<String, dynamic> toJson() =>
     _$CartModelToJson(this);

 @override
  String toString() {
    return 'CartModel{id: $id, userId: $userId, date: $date, products: $products}';
 }
}