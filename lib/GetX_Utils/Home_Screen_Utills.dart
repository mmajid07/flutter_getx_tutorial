import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Tutorial"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("GetX dialog Alert"),
                subtitle: Text("Bro this is Dialog Alert"),
                onTap: (){
                  Get.defaultDialog(
                      title: "Dialog",
                      titlePadding: EdgeInsets.all(10),
                      middleText: "This is midle text",
                    contentPadding: EdgeInsets.all(10),
                    // textConfirm: "Yes",
                    // textCancel: "No",
                    confirm: TextButton(onPressed: ( ){}, child: Text("Confirm")),
                    cancel: TextButton(onPressed: ( ){
                      Get.back();
                    }, child: Text("Cancel")),
                    

                  );
                },
              ),
            ),
            SizedBox(height: 10,),

            Card(
              child: ListTile(
                title: Text("GetX Bottom Sheet Alert"),
                subtitle: Text("Bro this is Bottom sheet Alert"),
                onTap: (){
                  Get.bottomSheet(
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.light_mode_outlined),
                              title: Text("Light Mode"),
                              onTap: (){
                                Get.changeTheme(ThemeData.light());
                              },
                            ),

                            ListTile(
                              leading: Icon(Icons.dark_mode),
                              title: Text("Dark Mode"),
                              onTap: (){
                                Get.changeTheme(ThemeData.dark());
                              },
                            ),
                          ],
                        ),
                      ),
                       );
                },
              ),
            ),

            ElevatedButton(onPressed: (){
              //Get.to(ScreenOne());
              Get.toNamed("/screenOne", arguments: [
                "Majid Khan",
                "Affan khan",

              ]);

            }, child: Text("GoTo Next Scrren"))

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){

        // Get.snackbar("Alert", "Hi Bro this is getX",
        //     icon: Icon(Icons.notifications, color: Colors.white,),
        //     backgroundColor: Colors.purple,
        //   colorText: Colors.white,
        //   onTap: (snak){
        //   Get.to(demo());
        //   },
        // );
        //
        // Get.defaultDialog(
        //     title: "Dialog Box",content: SingleChildScrollView(
        //       child: Container(
        //   height: 200,
        //         width: 200,
        //         child: Form(
        //           child: Column(
        //             children: [
        //               TextField(
        //                 decoration: InputDecoration(
        //                   hintText: "Email"
        //                 ),
        //
        //               ),
        //
        //               SizedBox(height: 10,),
        //               TextField(
        //                 decoration: InputDecoration(
        //                     hintText: "Password"
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        // actions: [
        //   TextButton(onPressed: ( ){
        //     Get.back();
        //   }, child: Text("Cancel")),
        //   TextButton(onPressed: ( ){
        //     Get.back();
        //   }, child: Text("Save")),
        // ]
        // );
        //
        // Get.changeTheme(ThemeData.light());
        // Get.changeTheme(ThemeData.dark());

      }),
    );
  }
}
