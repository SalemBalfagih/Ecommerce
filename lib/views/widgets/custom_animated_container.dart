import 'package:ecommerce/core/constants/const_colors.dart';
import 'package:ecommerce/data/source/static_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          (index) => AnimatedContainer(
            margin: const EdgeInsets.all(4),
            color: ConstColors.grey,
            height: 15.h,
            width: 15.w,
            duration: const Duration(
              milliseconds: 900,
            ),
          ),
        )
      ],
    );
  }
}
