import 'package:ecommerce/core/constants/const_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.icon,
  });
  final String hintText;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: Icon(
          icon,
          color: ConstColors.white,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ConstColors.white),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ConstColors.white, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: ConstColors.white),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: ConstColors.white),
      ),
    );
  }
}
