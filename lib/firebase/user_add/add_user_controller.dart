

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firbase_gitx/firebase/user_add/firebase_controller/add_user_service.dart';
import 'package:firbase_gitx/firebase/user_add/firebase_controller/get_all_service.dart';
import 'package:flutter/cupertino.dart';

class AddUserController extends  GetxController{
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  RxBool isLoading = false.obs;

addUserFun()async{
  log("=============call============");
 bool status =  await AddUserFirebaseService.addUserService(name:nameController.text, phone: phoneController.text);
 isLoading.value = false;
 if (status){
   nameController.clear();
   phoneController.clear();
 }
 log("===========End===========");
}

getAllUser()async{
  QuerySnapshot<Map<String,dynamic>>? data =
      await GetAllUserFirebaseService().getUserService();

  if (data ! = null){
    for (var i in data.docs.toList()){
      log("============a : ${i["name"]}=========");
    }
  }

}
}