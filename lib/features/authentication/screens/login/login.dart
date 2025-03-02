import 'package:flutter/material.dart';
import '../../../../common/styles/spacing_style.dart';
import '../../../../common/widgets/login_signup/social_botton.dart';
import '../../../../common/widgets/login_signup/t_divider.dart';
import '../../../../utils/constants/text_strings.dart';
import '/utils/constants/sizes.dart';
import '/utils/helpers/helper_functions.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithTopAppBar / 1.5,
          child: Column(
            children: [
              LoginHeader(),
              const SizedBox(
                height: TSizes.spaceBtwSections / 2,
              ),
              const LoginForm(),
              TDivider(dark: dark, dividerText: TTexts.orSignInWith),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SocialBotton(),
            ],
          ),
        ),
      ),
    );
  }
}
