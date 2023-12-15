import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/GetX_Utils/Home_Screen_Utills.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  final String? title;
    ScreenTwo({super.key,  this.title});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title.toString()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: ElevatedButton(onPressed: ( ){
             Get.to(HomeScreen());

          }, child: Text("Go Back"))),
        ],
      ),
    );
  }
}
