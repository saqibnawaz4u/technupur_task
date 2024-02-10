import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:technupur_task/core/constants/app_strings.dart';
import 'package:technupur_task/core/constants/colors.dart';
import 'package:technupur_task/core/constants/image_assets.dart';
import 'package:technupur_task/ui/home_screen/home_screen_vm.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller=Get.put(HomeController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getHomeProducts();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 1,
        leading: Container(
          height: 30.h,
          width: 30.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0.r),
            color: AppColors.containerBackground,
          ),
          child: IconButton(
            icon: Icon(Icons.menu,color: Colors.black.withOpacity(0.5),),
            onPressed: (){

            },
          ),
        ),
        title: Image.asset(ImgAssets.logo2,height: 30.h,width: 130.w,),
        centerTitle: true,
        actions: [
          Container(
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0.r),
              color: AppColors.containerBackground,
            ),
            child: Center(
              child: Icon(Icons.search,color: Colors.black.withOpacity(0.5),),
            ),
          ),
          SizedBox(
            width: 10.w,
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(),
      ),
    );
  }
}
