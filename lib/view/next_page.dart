import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:learn_getx/view/my_home_page.dart';

import '../my_controller.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Current page value ${Get.parameters["someValue"]}"),
            GetX<MyController>(
              init: MyController(),
              builder: (controller){
                return Text("counter : ${controller.count}");
              },
            ),
            MaterialButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("back to home"),
              color: Colors.lightBlue,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.find<MyController>().decrement();
      },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
