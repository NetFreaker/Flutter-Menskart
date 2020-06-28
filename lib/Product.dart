import 'dart:ui';

class Product {
  final int id, price;
  final String title, description, image;
  final Color color;

  Product(
      {this.id,
      this.price,
      this.title,
      this.description,
      this.image,
      this.color});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    color: Color(0XFFdac007),
    price: 56,
    title: "Converse Chuck Taylor",
    image: "assets/images/shoes/1.png",
  ),
  Product(
    id: 4,
    price: 68,
    color: Color(0XFF567fc4),
    title: "Nike Air Jordan 1 Retro High",
    image: "assets/images/shoes/2.png",
  ),
  Product(
    id: 9,
    price: 39,
    color: Color(0XFFc50025),
    title: "Nike Air Jordan 1 Retro High",
    image: "assets/images/shoes/3.png",
  ),
];
