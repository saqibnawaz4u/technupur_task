import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController{
  Future getHomeProducts() async{
    var url= Uri.parse('https://tp-flutter-test.vercel.app/v1/category');
   var response= await http.get(url);
   print(response.body);

   print(response.statusCode);

   if(response.statusCode==200){
     Get.snackbar('Done', 'Api get successfully');
   }else{
     print('something went wrong');
   }
  }
}
