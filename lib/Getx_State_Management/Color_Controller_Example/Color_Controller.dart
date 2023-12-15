
import 'package:get/get.dart';

class ColorController{
  RxDouble opacity=0.3.obs;

  SetOpacity(double value){
    opacity.value=value;
  }
}