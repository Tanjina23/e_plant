import 'dart:async';

import 'package:e_app/constant/app_color.dart';
import 'package:e_app/ui/log_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 5),
        () => Navigator.push(
            context, CupertinoPageRoute(builder: (_) => LoginScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "E-Plant",
              style: TextStyle(
                  color: AppColors.deep_green,
                  fontWeight: FontWeight.bold,
                  fontSize: 44.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Image.asset(
              "images/Logo.png",
            ),
            SizedBox(
              height: 20.h,
            ),
            const CircularProgressIndicator(
              color: AppColors.deep_green,
            ),
          ],
        ),
      )),
    );
  }
}
