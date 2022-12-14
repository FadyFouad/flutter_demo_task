/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 14/12/2022 at 21:48.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/

class CartItem {
  int? id;
  String? name;
  String? imageUrl;
  String? quantity;
  double price;
  int count;

  CartItem(
      {this.id,
      this.name,
      this.imageUrl,
      this.quantity,
      this.price = 0,
      this.count = 0});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'quantity': quantity,
      'price': price,
      'count': count,
    };
  }

  factory CartItem.fromJson(Map<String, dynamic> map) {
    return CartItem(
      id: map['id'] as int,
      name: map['name'] as String,
      imageUrl: map['imageUrl'] as String,
      quantity: map['quantity'] as String,
      price: map['price'] as double,
      count: map['count'] as int,
    );
  }
}
