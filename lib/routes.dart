import 'package:ecommerce/core/constants/const_route.dart';
import 'package:ecommerce/views/screens/auth/login_view.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  ConstRoute.login: (context) => const LoginView(),
};
