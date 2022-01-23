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
          IconButton(onPressed: (){
            Get.changeTheme(ThemeData.light());
          }, icon: const Icon(Icons.wb_sunny_outlined)),
          IconButton(onPressed: (){
            Get.changeTheme(ThemeData.dark());
          }, icon: const Icon(Icons.wb_sunny))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    color: Colors.lightBlueAccent,
                    height: MediaQuery.of(context).size.height * 0.40,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Wrap(
                      children: const [
                        ListTile(
                          title: Text("Name: shaunhossain"),
                        ),
                        ListTile(
                          title: Text("Address: Mirpur"),
                        ),
                        ListTile(
                          title: Text("Email: shaunhossain1995@gmail.com"),
                        )
                      ],
                    ),
                  ),
                  isDismissible: false
                );
              },
              child: const Text("Show BottomSheet"),
              color: Colors.lightBlue,
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
