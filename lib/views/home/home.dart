import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controllers/my_controller.dart';
import 'package:get_x/views/profile/profile.dart';
import 'package:get_x/widgets/custom_button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // debugModeShowBanner: false,
      appBar: AppBar(
        title: Text('GetX'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GetX<MyController>(
                init: MyController(),
                builder: (controller) {
                  return Text(
                    'Count value : ${controller.count}.\n(Min = 0, max = 5)',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }),
            Container(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  myButtom(context, () {
                    Get.find<MyController>().decreament();
                  }, 'Subract'),
                  myButtom(context, () {
                    Get.find<MyController>().increament();
                  }, 'Add')
                ],
              ),
            ),
            myButtom(context, () {
              Get.snackbar(
                'Successful Singin',
                'Dear user welcome to my app',
                snackPosition: SnackPosition.BOTTOM,
              );
            }, 'Show Snackbar'),
            myButtom(context, () {
              Get.defaultDialog(
                title: 'Welcome',
                middleText: 'You just created an account',
              );
            }, 'Show dialog'),
            myButtom(context, () {
              Get.bottomSheet(
                Container(
                  child: Wrap(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.wb_sunny_outlined,
                        ),
                        title: Text('Light theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.wb_sunny,
                        ),
                        title: Text('Dark theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ),
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Colors.white,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
              );
            }, 'Change theme'),
            myButtom(context, () {
              Get.to(
                Profile(),
                fullscreenDialog: true,
              );
            }, 'Proceed now'),
          ],
        ),
      ),
    );
  }
}
