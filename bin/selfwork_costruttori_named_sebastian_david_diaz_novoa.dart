
void main() {
  final product1 = Product(id: 0, name: "Tastiera", price: 60);
  final product2 = DiscountProduct(id: 1, name: "Lavatrice", price: 500);

  print("Vi presentiamo una ${product1.name} al prezzo di ${product1.price} euro");
  print("Vi presentiamo una ${product2.name} al prezzo di originale ${product2.price} euro, ma con lo sconto del 20% lo pagate solo ${product2.finalPrice}");
 
}

class Product{
  final int id;
  final String name;
  final int price;

  Product({
    required this.id,
    required this.name,
    required this.price,
  });
}

class DiscountProduct extends Product {
  
  DiscountProduct({
    required super.id,
    required super.name,
    required super.price,
    });


  double get discountAmount => price * 0.20;

  double get finalPrice => price - discountAmount;
}