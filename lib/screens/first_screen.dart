import 'package:flutter/material.dart';
import 'second_screen.dart';

class Product {
  final String name;
  final String description;
  final int price;

  const Product(this.name, this.description, this.price);
}

const products = [
  Product('Pixel', 'Pixel is the most featureful phone ever', 800),
  Product('Laptop', 'Laptop is most productive development tool', 2000),
  Product('Tablet', 'Tablet is the most useful device ever for meeting', 1500),
  Product('Pendrive', 'iPhone is the stylist phone ever', 100),
  Product('Floppy Drive', 'iPhone is the stylist phone ever', 20),
];

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Navigation')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('Price: ${product.price}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}