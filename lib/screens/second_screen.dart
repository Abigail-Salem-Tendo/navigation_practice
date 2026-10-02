import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/rating_box.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: ListView(
        children: [
          Container(
            height: 260,
            color: product.color,
            alignment: Alignment.center,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  product.label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 72,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 16),
                Text(
                  product.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 32),
                Text(product.description, textAlign: TextAlign.center),
                const SizedBox(height: 32),
                Text('Price: ${product.price}'),
                const SizedBox(height: 32),
                RatingBox(rating: product.rating, size: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
