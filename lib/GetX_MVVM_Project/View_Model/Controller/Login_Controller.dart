
import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Utils/Utils.dart';
import 'package:flutter_getx_tutorial/repository/login_repository/login_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginController extends GetxController{

  final apiData=loginRepository();

  final TextEditingController emailController= TextEditingController();
  final TextEditingController passwordController= TextEditingController();


  final FocusNode emailFocusNodeController= FocusNode();
  final FocusNode passwordFocusNodeController= FocusNode();

  RxBool loading=false.obs;

  void isLogin(){

    loading.value=true;

    Map data={
      "email" : emailController.text,
      "password" : passwordController.text
    };

    apiData.loginAPI(data).then((value) {

      loading.value=false;

      Utils.SnackBar("Login", "Login Successfully");

    }).onError((error, stackTrace){
      loading.value=false;
      Utils.SnackBar("Error", error.toString());
    });
  }

}