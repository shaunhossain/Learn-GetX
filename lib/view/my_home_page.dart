import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var count = 0.obs;

  void increment(){
    count++;
  }

  void decrement(){
    count--;
  }


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
            Obx(()=>Text("counter value is $count")),
            MaterialButton(
              onPressed: ()=> increment(),
              child: const Text("Increment"),
              color: Colors.lightBlue,
            ),
            MaterialButton(
              onPressed: ()=> decrement(),
              child: const Text("Decrement"),
              color: Colors.lightBlue,
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
