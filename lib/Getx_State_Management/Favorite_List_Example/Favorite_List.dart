import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/Getx_State_Management/Favorite_List_Example/Favorite_Controller.dart';
import 'package:get/get.dart';

class FavoriteListScreen extends StatefulWidget {
  const FavoriteListScreen({super.key});

  @override
  State<FavoriteListScreen> createState() => _FavoriteListScreenState();
}

class _FavoriteListScreenState extends State<FavoriteListScreen> {
FavoriteController favoriteController=Get.put(FavoriteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite List'),
      ),
      
      body: ListView.builder(
          itemCount: favoriteController.fruitList.length,
          itemBuilder: (context, index){
        return Card(
          child: ListTile(
            onTap: (){
              if(favoriteController.tempList.contains(favoriteController.fruitList[index].toString())){
                favoriteController.removefromFavorite(favoriteController.fruitList[index].toString());
              }else{
                favoriteController.addtoFavorite(favoriteController.fruitList[index].toString());
              }
              //tempList.add(fruitList[index].toString());
            },
            title: Text(favoriteController.fruitList[index].toString()),
            trailing: Obx(() {
              return Icon(Icons.favorite, color: favoriteController.tempList.contains(favoriteController.fruitList[index].toString())? Colors.red : Colors.grey,);
            })
          ),
        );
      }),
    );
  }
}
