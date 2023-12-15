import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Res/App_Colors.dart';
import 'package:get/get.dart';

class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback onPressed;
  GeneralExceptionWidget({Key? key,required this.onPressed}):super(key: key);

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  AppColors appColors=AppColors();
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: height*0.2,),
          Icon(Icons.cloud_off, size: 50,color:AppColors.colorRed),
          SizedBox(height: height*0.15,),
          Center(child: Text("General_Exception".tr,textAlign: TextAlign.center, style: TextStyle(color: AppColors.colorBlack),)),
          SizedBox(height: height*0.1,),
          ElevatedButton(onPressed: widget.onPressed, child: Text("try again"))

        ],
      ),
    );
  }
}
