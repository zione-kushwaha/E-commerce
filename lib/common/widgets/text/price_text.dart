import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  const PriceText({
    super.key,
    required this.price,
    required this.maxLines,
    required this.isLarge,
    required this.isLineThrough,
  });

  final String price;
  final int maxLines;
  final bool isLarge;
  final bool isLineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      price,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: isLineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              fontSizeFactor: 0.8,
              decoration: isLineThrough ? TextDecoration.lineThrough : null),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
