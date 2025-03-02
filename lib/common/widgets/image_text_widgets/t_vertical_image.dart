import 'package:flutter/material.dart';
import '/utils/constants/colors.dart';
import '/utils/constants/sizes.dart';
import '/utils/helpers/helper_functions.dart';

class TverticalImageText extends StatelessWidget {
  const TverticalImageText({
    super.key,
    required this.image,
    required this.title,
    required this.textcolor,
    this.backgroundColor,
    required this.onpress,
  });

  final String image, title;
  final Color textcolor;
  final Color? backgroundColor;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onpress,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(TSizes.sm),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: backgroundColor ?? (dark ? TColors.black : TColors.white),
              borderRadius: BorderRadius.circular(56),
            ),
            child: Center(
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: dark ? TColors.white : TColors.dark,
              ),
            ),
          ),
          SizedBox(
            width: 55,
            child: Text(title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .apply(fontSizeFactor: 0.9)),
          ),
        ],
      ),
    );
  }
}
