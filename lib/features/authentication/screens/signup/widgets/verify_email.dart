import 'package:expense_tracker/utils/constants/image_strings.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:expense_tracker/utils/constants/text_strings.dart';
import 'package:expense_tracker/utils/helpers/helper_functions.dart';
import 'package:expense_tracker/utils/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                Image(
                    width: THelperFunctions.screenWidth() * 0.6,
                    image: AssetImage(TImages.deliveredEmailIllustration)),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                Text(
                  TTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems / 2,
                ),
                Text(
                  'Jeevankushwaha@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Text(
                  TTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),

                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                // buttoms

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text(TTexts.tContinue)),
                ),

                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {}, child: Text(TTexts.resendEmail)),
                )
              ],
            ),
          ),
        ));
  }
}
