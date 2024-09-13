import 'package:ecommerce/core/constants/const_colors.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/views/screens/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
              bodySmall: TextStyle(
                  fontSize: 15.sp,
                  fontFamily: "Cairo",
                  color: ConstColors.grey),
              headlineLarge: TextStyle(
                  fontSize: 25.sp,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.bold)),
          scaffoldBackgroundColor: ConstColors.mainColor,
        ),
        home: const OnBoardingView(),
        routes: routes,
      ),
    );
  }
}
