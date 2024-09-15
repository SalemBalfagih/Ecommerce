import 'package:ecommerce/controllers/onboarding_controller.dart';
import 'package:ecommerce/core/constants/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomButton extends GetView<OnboardingController> {
  const CustomButton({
    this.onPressed,
    required this.text,
    super.key,
  });
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
        color: ConstColors.blue,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 20.sp),
        ),
      ),
    );
  }
}
