import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxpostapiexample/screens/SecondScreens.dart';

import '../Controller/logincontroller.dart';

class HomeScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    logincontroller c = Get.put(logincontroller());

    return Scaffold(
      appBar: AppBar(
        title: Text("Post api"),
      ),
      body: Column(children: [
        TextFormField(
          controller: c.name,
          decoration: InputDecoration(border: OutlineInputBorder()),
          keyboardType: TextInputType.name,
        ),
        SizedBox(
          height: 10.0,
        ),
        TextFormField(
          controller: c.password,
          decoration: InputDecoration(border: OutlineInputBorder()),
          keyboardType: TextInputType.text,
        ),
        SizedBox(
          height: 10.0,
        ),
        ElevatedButton(
            onPressed: () async {
              await c.getdata();

              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SecondScreens(),
              ));
            },
            child: Text("Login")),
      ]),
    );
  }
}
