import 'package:flutter/material.dart';
class SecondScreens extends StatelessWidget {
  const SecondScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scond Screen")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text("add data"),
      ]),
    );
  }
}
