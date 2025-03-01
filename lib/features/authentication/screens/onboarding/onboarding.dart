import 'package:expense_tracker/utils/constants/image_strings.dart';
import 'package:expense_tracker/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'widgets/onboarding_navigation.dart';
import 'widgets/onboarding_next.dart';
import 'widgets/onboarding_pages.dart';
import 'widgets/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //horiziontal Scrollable pages
          PageView(
            physics: const BouncingScrollPhysics(),
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              )
            ],
          ),
          // let's add the skip bottom
          OnboardingSkip(),
          // let's add the dots
          OnboardingNavigation(),
          // circular bottom
          OnboardingNextButton()
        ],
      ),
    );
  }
}
