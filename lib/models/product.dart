import 'package:flutter/material.dart';

class Product {
  final String name;
  final String label;
  final String description;
  final int price;
  final Color color;
  final ValueNotifier<int> rating;

  Product({
    required this.name,
    required this.label,
    required this.description,
    required this.price,
    required this.color,
    int rating = 0,
  }) : rating = ValueNotifier<int>(rating);
}

final List<Product> products = [
  Product(
    name: 'Pixel',
    label: 'pixel 1',
    description: 'Pixel is the most featureful phone ever',
    price: 800,
    color: const Color(0xFF3F6FD8),
  ),
  Product(
    name: 'Laptop',
    label: 'laptop',
    description: 'Laptop is most productive development tool',
    price: 2000,
    color: const Color(0xFF3CCB4A),
  ),
  Product(
    name: 'Tablet',
    label: 'tablet',
    description: 'Tablet is the most useful device ever for meeting',
    price: 1500,
    color: const Color(0xFFCDBF2E),
    rating: 3,
  ),
  Product(
    name: 'Pendrive',
    label: 'pen drive',
    description: 'iPhone is the stylist phone ever',
    price: 100,
    color: const Color(0xFFD0623F),
  ),
  Product(
    name: 'Floppy Drive',
    label: 'floppy',
    description: 'iPhone is the stylist phone ever',
    price: 20,
    color: const Color(0xFF2EC4B6),
  ),
];
