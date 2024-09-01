 import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class GetAllUserFirebaseService{
  static Future<QuerySnapshot<Map<String,dynamic>>?> getUserService()async{
    try{
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      await firebaseFirestore.collection("User");
       var d = DateTime.now();
      QuerySnapshot<Map<String, dynamic>> aa =   await firebaseFirestore.collection("user").doc(d.toString().substring(0,11)).collection("aa").get();
      return aa;
    }catch(e){
      log("Error : $e");
    }
    return null;
  }

}