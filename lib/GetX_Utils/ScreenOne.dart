import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ScreenTwo.dart';

class ScreenOne extends StatefulWidget {
  final String name; // Use named parameter
  ScreenOne({Key? key, required this.name}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One " + widget.name), // Access name from widget
      ),
      body: Container(
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.purple,
              height: Get.height * 0.2,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(ScreenTwo(title: widget.name)); // Pass name to ScreenTwo
                  },
                  child: Text("GoTo Screen Two"),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              height: Get.height * 0.4,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(ScreenTwo(title: widget.name)); // Pass name to ScreenTwo
                  },
                  child: Text("GoTo Screen Two"),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              height: Get.height * 0.3,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(ScreenTwo(title: widget.name)); // Pass name to ScreenTwo
                  },
                  child: Text("GoTo Screen Two"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
