import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technupur_task/core/constants/image_assets.dart';
import 'package:technupur_task/ui/bottom_nav_bar/bottom_nav_bar.dart';
import 'dart:async';

import '../../core/constants/colors.dart';
import '../../core/constants/screen_utils.dart';

import '../home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();
    loadData();
  }


  Future<Timer> loadData() async {
    return Timer(
      const Duration(seconds: 3),
      onDoneLoading,
    );
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) =>  BottomNavigationScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);


    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // fit: StackFit.expand,
          children: <Widget>[
            Image.asset(ImgAssets.background),
            kHeight(20.h),
            Image.asset(ImgAssets.logo,height: 165.9.h,width: 199.6.w,),
            // kHeight(277.h),
            Center(
              child: Image.asset(ImgAssets.technupur,height: 165.9,width: 199.6,),
            )
          ],
        ),
      ),
    );
  }
}
