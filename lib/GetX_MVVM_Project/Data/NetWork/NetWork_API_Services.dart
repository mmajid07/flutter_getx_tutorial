import 'dart:convert';
import 'dart:io';

import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Data/App_Exceptions.dart';
import 'package:http/http.dart'as http;
import 'package:flutter_getx_tutorial/GetX_MVVM_Project/Data/NetWork/Base_Api_Service.dart';

class NetWorkAPIServices extends BaseApiServices{

  @override
  Future <dynamic> getAPI(String url) async{
    dynamic responseJson;
    try{
      final response= await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson=returnResponse(response);
    }on SocketException{
      throw InternetException("No Internet");
    }on RequestTimeOut{
      throw RequestTimeOut("Time out please request again");
    }

    return responseJson;

  }

  @override
  Future <dynamic> postApi(var data,String url) async{
    dynamic responseJson;
    try{
      final response= await http.post(Uri.parse(url),
      body:data
      ).timeout(Duration(seconds: 10));
      responseJson=returnResponse(response);
    }on SocketException{
      throw InternetException("No Internet");
    }on RequestTimeOut{
      throw RequestTimeOut("Time out please request again");
    }

    return responseJson;

  }


  dynamic returnResponse(http.Response response){
    switch (response.statusCode){
      case 200:
        dynamic responseJson=jsonDecode(response.body);
        return responseJson;
      case 400:
        throw ServerSideException("");
      default:
        throw CommunicationError("Com Error"+response.statusCode.toString());
    }
  }
 
}