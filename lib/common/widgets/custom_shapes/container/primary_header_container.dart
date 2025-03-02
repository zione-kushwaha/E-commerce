import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class TprimaryHeaderContainer extends StatelessWidget {
  const TprimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TcurvedEdgeWidget(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(0),
        color: TColors.primary,
        child: SizedBox(
          height: 300,
          child: Stack(
            children: [
              Positioned(top: -150, right: -150, child: TCircularContainer()),
              Positioned(top: 100, right: -200, child: TCircularContainer()),
              child
            ],
          ),
        ),
      ),
    );
  }
}
