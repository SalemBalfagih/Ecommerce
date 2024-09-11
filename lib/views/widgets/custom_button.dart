import 'package:ecommerce/core/constants/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      width: 300.w,
      height: 50.h,
      decoration: BoxDecoration(
          color: ConstColors.grey, borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Next",
          style: TextStyle(fontSize: 20.sp),
        ),
      ),
    );
  }
}
