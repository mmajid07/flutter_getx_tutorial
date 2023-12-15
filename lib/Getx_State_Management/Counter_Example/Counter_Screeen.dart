import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/Getx_State_Management/Counter_Example/Counter_Controller.dart';
import 'package:get/get.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  final CounterController controller= Get.put(CounterController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Timer.periodic(Duration(seconds: 1), (timer) {
    //   x++;
    //   setState(() {
    //
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
       appBar:AppBar(
         centerTitle: true,
        title: Text("Counter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Obx((){
                print("Rebuild widget");
                return Text(controller.counter.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),);
    }))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: ( ){

        controller.incrementCounter();
      }, child: Icon(Icons.add),),
    );

  }
}
