import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:expense_tracker/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSize {
  const TAppBar(
      {super.key,
      this.Title,
      this.showBackArrow = false,
      this.LeadingIcon,
      this.actions,
      this.onLeadingPressed});

  final Widget? Title;
  final bool showBackArrow;
  final IconData? LeadingIcon;
  final List<Widget>? actions;
  final VoidCallback? onLeadingPressed;

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: TSizes.md),
        child: AppBar(
          automaticallyImplyLeading: showBackArrow,
          title: Title,
          leading: showBackArrow
              ? IconButton(
                  icon: Icon(Iconsax.arrow_left),
                  onPressed: () => Get.back(),
                )
              : LeadingIcon != null
                  ? IconButton(
                      onPressed: onLeadingPressed, icon: Icon(LeadingIcon))
                  : null,
          actions: actions,
        ));
  }
}
