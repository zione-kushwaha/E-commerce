import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.color,
    required this.title,
    this.showButton = false,
    this.buttonTitle = 'View All',
    this.onButtonPressed,
  });

  final Color? color;
  final String title;
  final bool showButton;
  final String buttonTitle;
  final void Function()? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: color),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showButton)
          TextButton(
            onPressed: onButtonPressed,
            child: Text(buttonTitle,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: color)),
          )
      ],
    );
  }
}
