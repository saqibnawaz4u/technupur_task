// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:technupur_task/ui/bottom_nav_bar/bottomNavController.dart';
import 'package:technupur_task/ui/home_screen/home_screen.dart';


import '../../core/constants/app_strings.dart';
import '../../core/constants/colors.dart';

class BottomNavigationScreen extends StatefulWidget {
  final data;
  BottomNavigationScreen({Key? key, this.data}) : super(key: key);

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  final controller = Get.put(BottomNavBarController());
  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    HomeScreen(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  @override

  // O

  @override
  Widget build(BuildContext context) {
    Widget getWidget() {
      switch (currentTab) {
        case 0:
          return HomeScreen(
            // data: widget.data,
          );
      // case 1:
      //   return CategoryClass(
      //     data: widget.data,
      //   );
      // case 2:
      //   return BookingUserScreen();
      // case 3:
      //   return MyPosts(
      //     data: widget.data,
      //   );

        default:
          return HomeScreen(
            // data: widget.data,
          );
      }
    }

    Widget currentScreen = getWidget();

    return SafeArea(
      child: Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add),
        //   onPressed: () {
        //     Get.to(
        //           () => CreatePost(),
        //     );
        //   },
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar:  Obx(
           () {
            return BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),

                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.grid_view_sharp,),

                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),

                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_2),

                  ),
                ],
                currentIndex: controller.bottomAppBarIndex.value.toInt(),
                unselectedItemColor: AppColors.whiteColor.withOpacity(0.4),
                selectedItemColor: AppColors.whiteColor,
                iconSize: 24.0,
                onTap: (index) {
                  print(index);
                  controller.setBottomAppBarIndex(index);
                },
              );
          }
        ),


        // BottomAppBar(
        //   shape: CircularNotchedRectangle(),
        //   notchMargin: 10,
        //   child: Container(
        //     height: 60,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: <Widget>[
        //         MaterialButton(
        //           minWidth: 40,
        //           onPressed: () {
        //             currentScreen = HomePage(
        //                 // data: widget.data,
        //                 ); // if user taps on this dashboard tab will be active
        //             currentTab = 0;
        //             setState(() {});
        //           },
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: <Widget>[
        //               Icon(
        //                 Icons.home,
        //                 color: currentTab == 0 ? Colors.blue : Colors.grey,
        //               ),
        //               Text(
        //                 AppStrings.smoother,
        //                 style: TextStyle(
        //                   color:
        //                       currentTab == 0 ? Colors.blue : Colors.grey,
        //                   fontSize: 18.sp,
        //                   fontWeight: FontWeight.normal,
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //         MaterialButton(
        //           minWidth: 40,
        //           onPressed: () {
        //             // currentScreen = CategoryClass(
        //             //   data: widget.data,
        //             // ); // if user taps on this dashboard tab will be active
        //             currentTab = 1;
        //           },
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: <Widget>[
        //               Icon(
        //                 Icons.category_outlined,
        //                 color: currentTab == 1 ? Colors.blue : Colors.grey,
        //               ),
        //               Text(
        //                 AppStrings.face_reshape,
        //                 style: TextStyle(
        //                   color:
        //                       currentTab == 1 ? Colors.blue : Colors.grey,
        //                   fontSize: 18.sp,
        //                   fontWeight: FontWeight.normal,
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //
        //         // Right Tab bar icons
        //
        //         MaterialButton(
        //           minWidth: 40,
        //           onPressed: () {
        //             setState(() {
        //               // currentScreen =
        //               //     BookingUserScreen(); // if user taps on this dashboard tab will be active
        //               currentTab = 2;
        //             });
        //           },
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: <Widget>[
        //               Icon(
        //                 Icons.bookmark_add_outlined,
        //                 color: currentTab == 2 ? Colors.blue : Colors.grey,
        //               ),
        //               Text(
        //                 AppStrings.nose_reshape,
        //                 style: TextStyle(
        //                   color:
        //                       currentTab == 2 ? Colors.blue : Colors.grey,
        //                   fontSize: 18.sp,
        //                   fontWeight: FontWeight.normal,
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //         MaterialButton(
        //           minWidth: 40,
        //           onPressed: () {
        //             setState(() {
        //               // currentScreen =
        //               //     MyPosts(); // if user taps on this dashboard tab will be active
        //               currentTab = 3;
        //             });
        //           },
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: <Widget>[
        //               Icon(
        //                 Icons.person,
        //                 color: currentTab == 3 ? Colors.blue : Colors.grey,
        //               ),
        //               Text(
        //                 AppStrings.spot,
        //                 style: TextStyle(
        //                   color:
        //                       currentTab == 3 ? Colors.blue : Colors.grey,
        //                   fontSize: 18.sp,
        //                   fontWeight: FontWeight.normal,
        //                 ),
        //               ),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}


