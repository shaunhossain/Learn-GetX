import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../my_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
          children: <Widget>[
            GetX<MyController>(
              init: MyController(),
              builder: (controller){
                return Text("counter : ${controller.count}");
              },
            ),

            MaterialButton(
              onPressed: (){
                Get.toNamed("/next-page/123456");
              },
              child: const Text("Go to Next Page"),
              color: Colors.lightBlue,
            ),
            MaterialButton(
              onPressed: (){
                Get.find<MyController>().decrement();
              },
              child: const Text("Decrement"),
              color: Colors.lightBlue,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.find<MyController>().increment();
      },
        child: const Icon(Icons.plus_one),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
