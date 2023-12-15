
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Res/Routes/Routes_Name.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/View/LoginView/LoginView.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/View/Splash_Screen.dart';
import 'package:get/get.dart';

class AppRoutes{
  static appRoutes()=>

    [
      GetPage(
          name: RoutesName.splashScreen,
          page: ( )=>SplashScreen(),
          transition: Transition.fade,
          transitionDuration: Duration(milliseconds: 259)
      ),
      GetPage(
          name: RoutesName.loginView,
          page: ( )=>LoginView(),
          transition: Transition.fadeIn,
          transitionDuration: Duration(seconds: 1)
      )
    ];
  }