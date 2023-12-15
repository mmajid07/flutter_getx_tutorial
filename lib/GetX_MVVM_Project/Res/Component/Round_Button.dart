import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Res/App_Colors.dart';

class RoundButtonWidget extends StatelessWidget {

  RoundButtonWidget({Key? key,
  required this.onPressed, this.height=60,  this.width=double.infinity, required this.title, this.textColor=AppColors.colorWhite, this.buttonColor=AppColors.colorRed, this.fontSize=20,
  }):super(key: key);
  final VoidCallback onPressed;
  final double height, width;
  final String title;
  final Color textColor, buttonColor;
  final double fontSize;

  AppColors appColors=AppColors();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: buttonColor,
        ),
        child: Text(title, style: TextStyle(color: textColor, fontSize: fontSize),),
      ),
    );
  }
}
