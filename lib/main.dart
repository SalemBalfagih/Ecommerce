import 'package:ecommerce/core/constants/const_colors.dart';
import 'package:ecommerce/core/localization/change_local_controller.dart';
import 'package:ecommerce/core/localization/my_translations.dart';
import 'package:ecommerce/core/services/my_services.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/views/screens/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServies();
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});
  @override
  Widget build(BuildContext context) {
    ChangeLocalController controller = Get.put(ChangeLocalController());
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        translations: MyTranslations(),
        locale: controller.language,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: ConstColors.white,
          textTheme: TextTheme(
              bodySmall: TextStyle(
                  fontSize: 15.sp,
                  fontFamily: "Cairo",
                  color: ConstColors.green),
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
