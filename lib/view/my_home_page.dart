import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/view/next_page.dart';

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
            MaterialButton(
              onPressed: () {
                // Get.to(const NextPage(),
                //     // fullscreenDialog: true,
                //     transition: Transition.zoom,
                //   duration: const Duration(microseconds: 4000),
                //   curve: Curves.bounceInOut
                //
                // );
                Get.off(const NextPage());
              },
              child: const Text("Go to next"),
              color: Colors.lightBlue,
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
