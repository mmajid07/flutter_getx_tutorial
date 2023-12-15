import 'package:get/get.dart';

class FavoriteController{
  RxList<String> fruitList=["Orange", "mango", "Apple", "Bannana"].obs;
  RxList  tempList=[].obs;
  
  addtoFavorite(String value){
    tempList.add(value);
  }
  removefromFavorite(String value){
    tempList.remove(value);
  }
}