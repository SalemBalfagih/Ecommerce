import 'package:ecommerce/data/source/static_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: onBoardindList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Image.asset(
              onBoardindList[index].image,
              height: 260.h,
              width: 250.w,
              fit: BoxFit.fill,
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              onBoardindList[index].title,
              style: TextStyle(
                fontSize: 30.h,
              ),
            ),
            Text(
              onBoardindList[index].body,
              style: TextStyle(
                fontSize: 20.sp,
              ),
            ),
            const Spacer(
              flex: 4,
            )
          ],
        );
      },
    );
  }
}
