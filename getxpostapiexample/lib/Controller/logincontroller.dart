import 'dart:convert';
import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getxpostapiexample/resources/URLresourses.dart';
import 'package:http/http.dart' as http;

class logincontroller extends GetxController{
RxList alldata = [].obs;
RxBool isload = false.obs;
TextEditingController name = TextEditingController();
TextEditingController password = TextEditingController();


 @override
  void onInit() {
    super.onInit();

  }
  getdata() async{
    isload(true);
 var jsonparams = {
                "name": name.text.toString(),
                "password":password.text.toString(),
                "device_token": "12345678",
                "device_os":Platform.operatingSystem,
              };

               var headers = {
      "Content-Type" :"application/json",

    };
    Uri url = Uri.parse(URLresources.LOGIN);
    var response = await http.post(url,headers: headers,body: jsonEncode(jsonparams));
    if(response.statusCode==200){
      var json = jsonDecode(response.body.toString());

    }
    else{
          isload(false);
    }

  }
   
}