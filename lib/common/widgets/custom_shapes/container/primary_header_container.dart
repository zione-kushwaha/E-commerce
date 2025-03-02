import 'package:expense_tracker/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:expense_tracker/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter/material.dart';
import '../../../../features/shop/screens/home/widgets/home_appbar.dart';
import '/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TcurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: EdgeInsets.zero,
        child: SizedBox(
          height: 350,
          child: Stack(
            children: [
              Positioned(
                top: -200,
                right: -250,
                child: TCircularContainer(
                  backgroundColor: TColors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -320,
                child: TCircularContainer(
                  backgroundColor: TColors.white.withOpacity(0.1),
                  radius: 200,
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
