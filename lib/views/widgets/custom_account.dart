import 'package:ecommerce/core/constants/const_colors.dart';
import 'package:flutter/material.dart';

class CustomAccount extends StatelessWidget {
  const CustomAccount({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            text2,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ConstColors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
