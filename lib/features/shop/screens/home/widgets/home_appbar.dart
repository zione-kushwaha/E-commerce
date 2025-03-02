import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../../common/widgets/products_cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class ThemeAppBar extends StatelessWidget {
  const ThemeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TPrimaryHeaderContainer(
      child: Column(
        children: [
          TAppBar(
            title: Column(
              children: [
                Text(TTexts.homeAppbarTitle,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: TColors.grey)),
                Text(TTexts.homeAppbarTitle,
                    style: Theme.of(context).textTheme.headlineSmall!.apply(
                          color: TColors.white,
                        ))
              ],
            ),
            actions: [
              TcartCounterIcon(
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
