import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              init: Get.find<MyController>(),
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
        child: const Icon(Icons.exposure_minus_1),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
