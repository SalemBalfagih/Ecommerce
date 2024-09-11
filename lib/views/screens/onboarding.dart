import 'package:ecommerce/core/constants/const_colors.dart';
import 'package:ecommerce/data/source/static_data.dart';
import 'package:ecommerce/views/widgets/custom_animated_container.dart';
import 'package:ecommerce/views/widgets/custom_button.dart';
import 'package:ecommerce/views/widgets/custom_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(flex: 3, child: CustomPageView()),
            Expanded(
                child: Column(
              children: [
                CustomAnimatedContainer(),
                Spacer(),
                CustomButton(),
                Spacer(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
