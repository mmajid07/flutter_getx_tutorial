import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Data/App_Exceptions.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Res/App_Colors.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Res/Component/Internet_Exception.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Res/Component/Round_Button.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Res/Localization/Language.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Res/assets/Image_Class.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Utils/Utils.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/View_Model/Services/Login_Service.dart';
import 'package:get/get.dart';

import '../Res/Component/GeneralException.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  LoginServices loginServices = LoginServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loginServices.isLogin();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,

      appBar: AppBar(
        centerTitle: true,
        title: Text("name".tr),
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
           Center(child: Text("welcome".tr, textAlign: TextAlign.center,)),
        ],
      ),


      floatingActionButton: FloatingActionButton(onPressed: ( ){

Utils.toastMessage("Majid here");
Utils.toastMessageCenter("Majid");
      }),
    );
  }
}
