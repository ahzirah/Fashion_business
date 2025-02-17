
import 'package:fashion/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;


  // Update Current Page Index when page scroll
  void updatePageIndicator (index) => currentPageIndex.value = index;

  // Jump to the specific dot selected page
  void dotNavigationClick (index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }


  // Update curent index and jum p to the next page
  void nextPage () {
    if(currentPageIndex.value == 2) {
     Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }


  // Update current index and jump to the last page
  void skipPage () {
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }


}

