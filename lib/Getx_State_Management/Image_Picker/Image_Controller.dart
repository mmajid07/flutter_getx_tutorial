import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController{
  RxString imagepath=''.obs;

  Future pickImage()async{
    final ImagePicker _picker =ImagePicker();
    final image= await _picker.pickImage(source: ImageSource.camera, imageQuality: 80);
    if(image !=null){
      imagepath.value=image.path.toString();
    }
  }
}