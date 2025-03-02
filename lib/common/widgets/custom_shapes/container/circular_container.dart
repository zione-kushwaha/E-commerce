import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 300,
    this.height = 300,
    this.radius = 300,
    this.padding = 0,
    this.child,
    this.backgroundColor = TColors.white,
  });
  final double? width, height, radius, padding;

  final Widget? child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.all(padding!),
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor!.withOpacity(0.1),
          borderRadius: BorderRadius.circular(radius!)),
      child: child,
    );
  }
}
