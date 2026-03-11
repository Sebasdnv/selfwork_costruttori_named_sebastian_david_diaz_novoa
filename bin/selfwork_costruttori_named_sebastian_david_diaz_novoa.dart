
void main() {

  final product1 = Product(id: 0, name: "Tastiera", price: 60);
  
  final product2 = Product.discount(id: 1, name: "Lavatrice", originalPrice: 500);

  print("Vi presentiamo una ${product1.name} al prezzo di ${product1.price} euro");
  print("Vi presentiamo una ${product2.name} scontata del 20%, ora costa solo ${product2.price} euro");
}

class Product {
  final int id;
  final String name;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.price,
  });

  Product.discount({
    required this.id,
    required this.name,
    required double originalPrice,
  }) : price = originalPrice - (originalPrice * 0.20);
}