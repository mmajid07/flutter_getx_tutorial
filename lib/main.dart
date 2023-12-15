import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Res/Localization/Language.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Res/Routes/Routes.dart';
import 'package:flutter_getx_tutorial/GetX_Utils/Home_Screen_Utills.dart';
import 'package:get/get.dart';
import 'GetX_MVVM_Project/View/Splash_Screen.dart';
import 'GetX_Utils/Get_Height.dart';
import 'GetX_Utils/Get_Languages.dart';
import 'GetX_Utils/ScreenOne.dart';
import 'GetX_Utils/ScreenTwo.dart';
import 'Getx_State_Management/Color_Controller_Example/Color_Screen.dart';
import 'Getx_State_Management/Counter_Example/Counter_Screeen.dart';
import 'Getx_State_Management/Favorite_List_Example/Favorite_List.dart';
import 'Getx_State_Management/Image_Picker/Image_Picker_Screen.dart';
import 'Getx_State_Management/Login_SignUp_API/Login_SignUp_Screen.dart';
import 'Getx_State_Management/Switch_Controller/Switch_Screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      translations: App_languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      // locale: Locale('ur', 'PK'),
      // translations: Languages(),
      // //fallbackLocale: Locale("ur", "PK"),
      //home: SplashScreen(),
      getPages:AppRoutes.appRoutes()
      // getPages: [
      //    GetPage(name: "/", page: ( )=> HomeScreen()),
      //   GetPage(name: "/screenOne", page:()=> ScreenOne(name: 'Majid',)),
      //   GetPage(name: "/screenTwo", page:  ()=>ScreenTwo()),
      // ],
    );
  }
}
