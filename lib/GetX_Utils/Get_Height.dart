import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GetXHeightandWidht extends StatelessWidget {
  const GetXHeightandWidht({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Height and Width"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           ListTile(
               title: Text("message".tr),
             subtitle: Text("name".tr),
           
           ),
            
            Row(
              children: [
                OutlinedButton(onPressed: ( ){
                    Get.updateLocale(Locale('en', 'US'));
                }, child: Text("English")),
                OutlinedButton(onPressed: ( ){
                  Get.updateLocale(Locale('ur','PK'));
                }, child: Text("Urdu")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
