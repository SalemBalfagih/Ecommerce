import 'package:ecommerce/core/constants/const_colors.dart';
import 'package:ecommerce/core/constants/const_image.dart';
import 'package:ecommerce/views/widgets/custom_account.dart';
import 'package:ecommerce/views/widgets/custom_button.dart';
import 'package:ecommerce/views/widgets/custom_image.dart';
import 'package:ecommerce/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConstColors.mainColor,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CustomImage(
                imageName: ConstImage.login,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                "Sign In",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text("Welcome back",
                  style: Theme.of(context).textTheme.bodySmall),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CustomTextFormField(
                hintText: 'email',
                icon: Icons.email_outlined,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CustomTextFormField(
                hintText: 'password',
                icon: Icons.lock_open,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CustomButton(
                text: "Login",
                onPressed: () {},
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CustomAccount(
                text1: "Don't have an account?",
                text2: "Sign up",
              ),
            ],
          ),
        ));
  }
}
