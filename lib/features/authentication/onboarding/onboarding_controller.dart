import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final PageController pageController = PageController();

  // creating the observer
  final currentPageIndex = 0.obs;

  // update the pageIndex
  void updatePageIndex(int index) {}

  //dot's navigation clicked
  void dotClicked(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }

// next page
  void nextPage() {}

//skip the onboarding
  void skipPage() {}
}
