
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SwitchController extends GetxController{

  RxBool swtichValue=false.obs;

  setSwitchValue(bool value){
    swtichValue.value=value;
  }
}