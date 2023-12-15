import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/Getx_State_Management/Color_Controller_Example/Color_Controller.dart';
import 'package:get/get.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {

  ColorController colorController=Get.put(ColorController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red.withOpacity(colorController.opacity.value),
          ),

          Slider(value: colorController.opacity.value, onChanged: (value){
            colorController.SetOpacity(value);
            setState(() {

            });
          })
        ],
      ),
    );
  }
}
