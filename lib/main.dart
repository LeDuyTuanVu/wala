import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wala/screens/splash_screen.dart';
import 'package:wala/screens/walkthrough_screen.dart';

void main() {
  runApp(const Wala());
}

class Wala extends StatelessWidget {
  const Wala({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wala',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => const SplashScreen(),
          WalkThroughScreen.routeName: (context) => const WalkThroughScreen(),
        },
      ),
    );
  }
}
