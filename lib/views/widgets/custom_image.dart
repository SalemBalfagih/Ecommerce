import 'package:ecommerce/core/constants/const_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.imageName,
  });
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        imageName,
        height: 220.h,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
