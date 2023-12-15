
import 'dart:async';

import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Res/Routes/Routes_Name.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginServices{

  isLogin(){
    Timer(const Duration(seconds: 5),(){
      Get.toNamed(RoutesName.loginView);
    });
  }
}