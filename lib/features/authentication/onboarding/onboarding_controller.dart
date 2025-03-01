import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final PageController pageController = PageController();

  // creating the observer
  Rx<int> currentPageIndex = 0.obs;

  // update the pageIndex
  void updatePageIndex(int index) {
    currentPageIndex.value = index;
  }

  //dot's navigation clicked
  void dotNavigation(int index) {
    currentPageIndex.value = index;
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }

// next page
  void nextPage() {
    if (currentPageIndex == 2) {
      // navigate to other page login
    } else {
      int index = currentPageIndex.value + 1;
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

//skip the onboarding
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.animateToPage(2,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }
}
