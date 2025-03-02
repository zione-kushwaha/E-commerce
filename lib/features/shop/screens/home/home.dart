import 'package:expense_tracker/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:expense_tracker/common/widgets/custom_shapes/container/t_search_container.dart';
import 'package:expense_tracker/common/widgets/text/t_section_heading.dart';
import 'package:expense_tracker/utils/constants/colors.dart';
import 'package:expense_tracker/utils/constants/image_strings.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:expense_tracker/utils/constants/text_strings.dart';
import 'package:expense_tracker/utils/device/device_utility.dart';
import 'package:expense_tracker/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import '../../../../common/widgets/image_text_widgets/t_vertical_image.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                TPrimaryHeaderContainer(
                  child: Column(
                    children: [
                      ThemeAppBar(),
                    ],
                  ),
                ),
                Positioned(
                    top: TDeviceUtils.getAppBarHeight() + 50,
                    left: 10,
                    right: 10,
                    child: Column(
                      children: [
                        TSearchContainer(text: 'Search in a store'),
                        const SizedBox(height: TSizes.spaceBtwSections / 2),

                        TSectionHeading(
                          title: 'Popular Categories',
                          showButton: false,
                          color: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections / 4),

                        // Add the popular categories here
                        SizedBox(
                          height: 90,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return TverticalImageText(
                                  onpress: () {},
                                  title: 'Clothes',
                                  image: TImages.clothIcon,
                                  textcolor: TColors.white,
                                );
                              }),
                        )
                      ],
                    )),
              ],
            ),

            // now working in
          ],
        ),
      ),
    );
  }
}
