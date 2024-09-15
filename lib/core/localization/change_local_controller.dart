import 'dart:developer';

import 'package:ecommerce/core/services/my_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLocalController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  @override
  void onInit() {
    language = Locale(Get.deviceLocale!.languageCode);
    super.onInit();
  }
}
