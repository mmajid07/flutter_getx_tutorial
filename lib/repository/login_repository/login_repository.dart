
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Data/NetWork/NetWork_API_Services.dart';
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Res/app_url/app_url.dart';

class loginRepository{

  final _apiService=NetWorkAPIServices();

  Future <dynamic> loginAPI (var data)async{

    dynamic response= _apiService.postApi(data, AppUrl.loginApi);
    return response;
  }
}