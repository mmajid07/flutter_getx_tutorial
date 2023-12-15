import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/Getx_State_Management/Login_SignUp_API/Login_Controller.dart';
import 'package:get/get.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({super.key});

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  LoginController loginController=Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login SignUp"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: loginController.emailController.value,
              decoration: InputDecoration(
                hintText: "Email"
              ),
            ),

            SizedBox(height: 10,),
            TextFormField(
              controller: loginController.passwordController.value,
              decoration: InputDecoration(
                  hintText: "password"
              ),
            ),
            SizedBox(height: 20,),

            Obx(() => TextButton(
                onPressed: ( ){
                  loginController.loading.value=true;
                  loginController.getApiFunction();
                },
                child:loginController.loading.value ?CircularProgressIndicator(): Text("Login")))


          ],
        ),
      ),
    );
  }
}
