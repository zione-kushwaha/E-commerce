import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/colors.dart';

class TcartCounterIcon extends StatelessWidget {
  const TcartCounterIcon({
    super.key,
    required this.onPressed,
    this.color = TColors.white,
  });

  final VoidCallback onPressed;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: color,
          ),
        ),
        Positioned(
            right: 0,
            child: Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  color: TColors.black.withOpacity(0.5),
                  shape: BoxShape.circle),
              child: Center(
                child: Text(
                  '2',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.white, fontSizeFactor: 0.8),
                ),
              ),
            ))
      ],
    );
  }
}
