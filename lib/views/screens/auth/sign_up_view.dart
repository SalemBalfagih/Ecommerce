import 'package:ecommerce/core/constants/const_colors.dart';
import 'package:ecommerce/views/widgets/custom_account.dart';
import 'package:ecommerce/views/widgets/custom_button.dart';
import 'package:ecommerce/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                "sign up",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text("Welcome back",
                  style: Theme.of(context).textTheme.bodySmall),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CustomTextFormField(
                hintText: 'username',
                icon: Icons.person,
              ),
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
                hintText: 'phone',
                icon: Icons.phone_android_outlined,
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
                text: 'sign up',
                onPressed: () {},
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CustomAccount(
                text1: "Already have an account?",
                text2: "Login",
              ),
            ],
          ),
        ));
  }
}
