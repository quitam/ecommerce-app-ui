import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Hand bag 1",
      price: 153,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: const Color(0xFFFBa8b9)),
  Product(
      id: 2,
      title: "Bag Fashion",
      price: 77,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: const Color(0xFFaeaeae)),
  Product(
      id: 3,
      title: "Modern Fashion",
      price: 98,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: const Color(0xFF33cc00)),
  Product(
      id: 4,
      title: "Office Fashion",
      price: 69,
      size: 14,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: const Color(0xFFE6B398)),
  Product(
    id: 5,
    title: "Office Code",
    price: 50,
    size: 15,
    description: dummyText,
    image: "assets/images/bag_5.png",
    color: const Color(0xFFFB7883),
  ),
  Product(
      id: 6,
      title: "Hang Top",
      price: 233,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_6.png",
      color: const Color(0xFF989493)),
  Product(
      id: 7,
      title: "Office Code",
      price: 76,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_7.png",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 8,
      title: "Belt Bag",
      price: 111,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_8.png",
      color: const Color(0xFFD3A984)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
