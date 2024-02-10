import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:technupur_task/routes/routes.dart';
import 'package:technupur_task/routes/routes_names.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child){
        return  GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Technupur Task',

          onGenerateRoute: AppRoutes.onGenerateRoute,
          initialRoute: RoutesName.splashscreen,
        );
      },
    );


  }
}
