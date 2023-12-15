import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Res/Component/Round_Button.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Utils/Utils.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/View_Model/Controller/Login_Controller.dart';
import 'package:get/get.dart';

import '../../Res/Component/Input_form_Component.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginController loginController=Get.put(LoginController());

  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("login".tr),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  InputFormComponent(
                    validator: (value){
                      if(value!.isEmpty){
                        Utils.SnackBar("E-Mail", "Please Enter Email");
                      }
                    },
                      onFieldSubmitted: (value){
                        Utils.fieldFocusChange(context, loginController.emailFocusNodeController, loginController.passwordFocusNodeController);
                      },
                      controller: loginController.emailController,
                      focusNode: loginController.emailFocusNodeController,
                      hintText: "email_hint".tr, obscuretext: false,),
                  SizedBox(height: 20,),
                  InputFormComponent(
                    validator: (value){
                      if(value!.isEmpty){
                        Utils.SnackBar("Password", "Please Enter Password");
                      }
                    },
                      onFieldSubmitted: (value){


                      },
                      controller: loginController.passwordController,
                      focusNode: loginController.passwordFocusNodeController,
                      hintText: "password_hint".tr,

                    obscuretext: true,),
                ],
              ),
            ),

            SizedBox(height: 20,),
            RoundButtonWidget(
              buttonColor: Colors.teal,
              onPressed: (){
              if(_formkey.currentState!.validate()){
                loginController.isLogin();

              }
            }, title: "login".tr, width: 200,)
          ],
        ),
      ),
    );
  }
}
