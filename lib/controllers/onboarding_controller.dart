import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import '../model/onboarding_info.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      //go to home page
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);

  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/reminder.jpg', 'We can Remind',
        'No need to remember always anything.'),
    OnboardingInfo('assets/reminder.jpg', 'We can Help',
        'No need to remember always anything.'),
    OnboardingInfo('assets/reminder.jpg', 'We can aware with you',
        'No need to remember always anything.')
  ];
}