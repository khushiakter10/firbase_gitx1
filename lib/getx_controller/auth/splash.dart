
import 'package:firbase_gitx/firebase/user_add/user_add.dart';
import 'package:firbase_gitx/getx_controller/local_storage/local_storage.dart';
import 'package:flutter/animation.dart';

class SplashController extends GetxController{
late AnimationController animationController;
late Animation<double> animation;

 @override
 void onInit() {
  nextPage();
   super.onInit();
  }

  Future nextPage()async{
   String token; await LocalStorage().readData(key: "token")?? "";
   await Future.delayed(const Duration(seconds: 2));
   if(token.isEmpty|| token != ""){
    Get.to(()=> const UserAdd ());

   }else{
    Get.to(()=> const  UserAdd());
   }
  }

}