import 'package:shop_online_flutter/entities/category.dart';

class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final Category category;
  final List<String> imagePath;

  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.imagePath,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      category: Category.fromJson(json['category']),
      imagePath: List<String>.from(json['images']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'category': category.toJson(),
      'images': imagePath,
    };
  }

  static List<Product> listFromJson(List<dynamic> list) =>
      List<Product>.from(
        list.map((e) => Product.fromJson(e)),
      );
}
