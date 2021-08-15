import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controllers/my_controller.dart';
import 'package:get_x/views/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        // primaryColor: Colors.green,
      ),
      home: Home(),
    );
  }
}
