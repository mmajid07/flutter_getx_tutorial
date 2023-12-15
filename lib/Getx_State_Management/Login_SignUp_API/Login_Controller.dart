
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController{
  final emailController= TextEditingController().obs;
  final passwordController= TextEditingController().obs;

  RxBool loading=false.obs;

  void getApiFunction()async{
     loading.value=true;
    try{
      final response = await http.post(Uri.parse("https://reqres.in/api/login"),
          body: {
            "email" : emailController.value.text,
            "password" : passwordController.value.text
          }
      );
      final data=jsonDecode(response.body);

      if(response.statusCode==200){
        loading.value=false;
        Get.snackbar("Login Successfully", "Congratulation");
      }else{
        loading.value=false;
        Get.snackbar("Login Failed", data["error"] );
      }
    }catch (e){
      loading.value=false;
      Get.snackbar("Exception", e.toString());
    }
  
  }
}