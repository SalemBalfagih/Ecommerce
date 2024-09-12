import 'package:ecommerce/controllers/onboarding_controller.dart';
import 'package:ecommerce/core/constants/const_colors.dart';
import 'package:ecommerce/data/source/static_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomAnimatedContainer extends StatelessWidget {
  const CustomAnimatedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            onBoardindList.length,
            (index) => GetBuilder<OnboardingController>(
                  builder: (controller) {
                    return AnimatedContainer(
                      margin: const EdgeInsets.all(4),
                      color: controller.currentPage != index
                          ? ConstColors.grey
                          : ConstColors.white,
                      height: 15.h,
                      width: controller.currentPage != index ? 15.w : 18.w,
                      duration: const Duration(
                        milliseconds: 900,
                      ),
                    );
                  },
                ))
      ],
    );
  }
}
