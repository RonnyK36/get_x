import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;

  void increament() {
    if (count < 5) {
      count++;
    }
  }

  void decreament() {
    if (count > 0) {
      count--;
    }
  }
}
