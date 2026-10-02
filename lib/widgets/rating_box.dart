import 'package:flutter/material.dart';

class RatingBox extends StatelessWidget {
  final ValueNotifier<int> rating;
  final double size;

  const RatingBox({super.key, required this.rating, this.size = 20});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: rating,
      builder: (context, value, _) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: List.generate(3, (index) {
            final starValue = index + 1;
            return IconButton(
              key: Key('star_$starValue'),
              padding: EdgeInsets.zero,
              constraints: BoxConstraints.tight(Size(size + 16, size + 16)),
              iconSize: size,
              color: Colors.red[500],
              icon: Icon(value >= starValue ? Icons.star : Icons.star_border),
              onPressed: () {
                rating.value = value == starValue ? starValue - 1 : starValue;
              },
            );
          }),
        );
      },
    );
  }
}
