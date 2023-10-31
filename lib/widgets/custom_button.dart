import 'package:e_app/constant/app_color.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customButton(String buttonText, onPressed) {
  return SizedBox(
    width: 1.sw,
    height: 56.h,
    child: ElevatedButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(color: Colors.white, fontSize: 18.sp),
      ),
      style: ElevatedButton.styleFrom(
        primary: AppColors.deep_green,
        elevation: 3,
      ),
    ),
  );
}
