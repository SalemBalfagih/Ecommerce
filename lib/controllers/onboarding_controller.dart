import 'package:ecommerce/core/constants/const_route.dart';
import 'package:ecommerce/data/source/static_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  int currentPage = 0;
  late PageController pageController;
  next() {
    currentPage++;
    if (currentPage > onBoardindList.length - 1) {
      Get.offAllNamed(ConstRoute.singUp);
    }
    pageController.animateToPage(currentPage,
        duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
  }

  changePage(index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
