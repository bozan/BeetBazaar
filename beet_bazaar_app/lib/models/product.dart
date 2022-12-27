import 'dart:convert';

class Product {
  final String name;
  final String description;
  final List<String> images;
  final double quantity;
  final double price;
  final String category;
  final String sellerName;
  final String? id;
  Product({
    required this.name,
    required this.description,
    required this.images,
    required this.quantity,
    required this.price,
    required this.category,
    required this.sellerName,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'images': images,
      'quantity': quantity,
      'price': price,
      'category': category,
      'sellerName': sellerName,
      'id': id,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      images: List<String>.from(map['images']),
      quantity: map['quantity']?.toDouble() ?? 0.0,
      price: map['price']?.toDouble() ?? 0.0,
      category: map['category'] ?? '',
      sellerName: map['sellerName'] ?? 'Unknown Seller',
      id: map['_id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
