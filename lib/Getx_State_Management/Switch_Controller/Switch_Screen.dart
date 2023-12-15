import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/Getx_State_Management/Switch_Controller/Switch_Controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {

  final SwitchController switchController=Get.put(SwitchController());
  // bool switchValue=false;
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Screen"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Notification'),
              Obx(() {
                return Switch(value: switchController.swtichValue.value, onChanged: (value){
                  switchController.swtichValue.value=value;
    });
                //switchValue=value;
                // setState(() {
                //
                // });
              })
            ],
          )
        ],
      ),
    );
  }
}
