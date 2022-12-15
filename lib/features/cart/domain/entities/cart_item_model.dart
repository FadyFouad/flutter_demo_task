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


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItem && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

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
