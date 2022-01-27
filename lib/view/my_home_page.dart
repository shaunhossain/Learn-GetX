import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/mycontroller.dart';
import 'package:learn_getx/student.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MyController myController = Get.put(MyController());

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
            GetBuilder<MyController>(
              init: MyController(),
              builder: (controller){
                return Text("counter : ${controller.count}");
              },
            ),

            MaterialButton(
              onPressed: (){
                Get.find<MyController>().increment();
              },
              child: const Text("Increment"),
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
