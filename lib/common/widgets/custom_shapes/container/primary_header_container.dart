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
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: -100,
                right: -150,
                child: TcircularContainer(
                  backgroundColor: TColors.white.withOpacity(0.1),
                  radius: 200,
                ),
              ),
              Positioned(
                top: 90,
                right: -220,
                child: TcircularContainer(
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
