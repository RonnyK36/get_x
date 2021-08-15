import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Your Profile'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text('Back to main'),
          ),
        ),
      ),
    );
  }
}
