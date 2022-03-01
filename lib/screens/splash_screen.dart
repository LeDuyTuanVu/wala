import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wala/value/app_fonts.dart';
import 'package:wala/value/app_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const routeName = '/splash-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 1000), () {
      Navigator.of(context).pushNamed('/walk-through-screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(AppImage.logo, width: 200.w, height: 104.h),
          SizedBox(height: 16.h),
          Text(
            "Eating healthy and happy!",
            style: TextStyle(
              fontFamily: AppFont.montserrat,
              fontSize: 14.sp,
            ),
          ),
          SizedBox(height: 6.h),
          Image.asset(
            AppImage.bgSplash,
            width: 375.w,
            height: 400.h,
          )
        ],
      ),
    );
  }
}
