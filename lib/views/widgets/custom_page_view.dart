import 'package:ecommerce/controllers/onboarding_controller.dart';
import 'package:ecommerce/data/source/static_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomPageView extends GetView<OnboardingController> {
  const CustomPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (value) {
        controller.changePage(value);
      },
      controller: controller.pageController,
      itemCount: onBoardindList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Expanded(
              child: Image.asset(
                onBoardindList[index].image,
                height: 250.h,
                width: 250.w,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Text(
              onBoardindList[index].title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              onBoardindList[index].body,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        );
      },
    );
  }
}
