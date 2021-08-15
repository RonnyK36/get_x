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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<MyController>(
                init: MyController(),
                builder: (controller) {
                  return Text(
                      'Count value : ${controller.count} (Min = 0, max = 5)');
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.find<MyController>().decreament();
                  },
                  child: Text('Subract'),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.find<MyController>().increament();
                  },
                  child: Text('Add'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  'Successful Singin',
                  'Dear user welcome to my app',
                  snackPosition: SnackPosition.BOTTOM,
                );
              },
              child: Text('Show Snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: 'Welcome',
                    middleText: 'You just created an account');
              },
              child: Text('Show dialog'),
            ),
            ElevatedButton(
              onPressed: () {
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
              },
              child: Text('Change theme'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  Home(),
                  fullscreenDialog: true,
                );
              },
              child: Text('Proceed now'),
            ),
          ],
        ),
      ),
    );
  }
}
