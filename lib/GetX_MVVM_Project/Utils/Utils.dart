import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Res/App_Colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils{
  static void fieldFocusChange(BuildContext context , FocusNode current, FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessageCenter(String message){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.colorBlack,
      gravity: ToastGravity.TOP,
    );
  }
  static toastMessage(String message){
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: AppColors.colorBlack,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static SnackBar(String title, String message){
    Get.snackbar(
        title,
        message,
        backgroundColor: AppColors.colorWhite.withOpacity(0.3),
    );
  }

}