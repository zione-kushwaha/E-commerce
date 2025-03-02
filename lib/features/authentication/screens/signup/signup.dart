import 'package:expense_tracker/common/widgets/login_signup/social_botton.dart';
import 'package:expense_tracker/common/widgets/login_signup/t_divider.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/signup_form.dart';
import 'widgets/terms_and_condition_checkbox.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: TSizes.sm,
              ),
              const TSignupForm(),
              const TermsAndCondition(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: Text(TTexts.createAccount)),
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TDivider(dividerText: TTexts.orSignUpWith),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SocialBotton()
            ],
          ),
        ),
      ),
    );
  }
}
