import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/Getx_State_Management/Image_Picker/Image_Controller.dart';
import 'package:get/get.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {

  ImageController imageController= Get.put(ImageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
      ),
      body: Obx(() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: imageController.imagepath.isNotEmpty ? FileImage(File(imageController.imagepath.toString())): null,
            ),
          ),
          TextButton(onPressed: ( ){
            imageController.pickImage();
          }, child: Text("Pick Image"))
        ],
      ),)
    );
  }
}
