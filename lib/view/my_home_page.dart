import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        actions: [
          IconButton(
              onPressed: () {
                Get.changeTheme(ThemeData.light());
              },
              icon: const Icon(Icons.wb_sunny_outlined)),
          IconButton(
              onPressed: () {
                Get.changeTheme(ThemeData.dark());
              },
              icon: const Icon(Icons.wb_sunny))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Current page ${Get.parameters["channel"]}"),
            Text("previous page ${Get.parameters["from"]}"),
            MaterialButton(
              onPressed: () {
                Get.toNamed("/next-page/12345");
              },
              child: const Text("Go to next"),
              color: Colors.lightBlue,
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
