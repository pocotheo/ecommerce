class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String? id;

  Product(
      {required this.name,
      required this.description,
      required this.price,
      required this.imageUrl,
      this.id});

  Map<String, dynamic> toMap(String id) {
    return {
      'name': name,
      'id': id,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }

  Product.fromMap(Map<String, dynamic> map)
      : name = map['name'] ?? '',
        id = map['id'] ?? '',
        description = map['description'] ?? '',
        price = map['price'] ?? 0.0,
        imageUrl = map['imageUrl'] ?? '';

  double get priceWithTax => price * 1.2;
}
