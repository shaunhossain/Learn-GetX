import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/mycontroller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('hello'.tr),
            MaterialButton(
              onPressed: () {
                Get.find<MyController>().changeLanguage('bn', 'BD');
              },
              child: const Text("Bengali"),
              color: Colors.lightBlue,
            ),
            MaterialButton(
              onPressed: () {
                Get.find<MyController>().changeLanguage('en', 'US');
              },
              child: const Text("English"),
              color: Colors.lightBlue,
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
