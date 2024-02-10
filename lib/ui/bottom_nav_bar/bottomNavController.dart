import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BottomNavBarController extends GetxController {
  var bottomAppBarIndex = 0.obs;
  setBottomAppBarIndex(int index) {
    bottomAppBarIndex.value = index;
  }

  var bottomAppBarFaceIndex = 0.obs;
  setBottomAppBarIndexForFaceReshape(int index) {
    bottomAppBarFaceIndex.value = index;
  }

  var bottomAppBarNoseIndex = 0.obs;
  setBottomAppBarIndexForNoseReshape(int index) {
    bottomAppBarNoseIndex.value = index;
  }
}