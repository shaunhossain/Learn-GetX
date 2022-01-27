import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/view/my_home_page.dart';
import 'package:learn_getx/view/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: "/", page: () => const MyApp()),
        GetPage(
            name: "/home",
            page: () => const MyHomePage(title: "home"),
            transition: Transition.leftToRight),
        GetPage(
            name: "/next-page/:someValue",
            page: () => const NextPage(),
            transition: Transition.leftToRight)
      ],
      unknownRoute: GetPage(name: "/notfound",page:()=> const UnknownRoute()),
      home: Scaffold(
        appBar: AppBar(title: const Text("Initial page"),),
        body: Center(
          child: FittedBox(
            child: MaterialButton(
              onPressed: () {
                Get.toNamed("/home?channel=home&from=initial_route");
              },
              child: const Text("Go to Home"),
              color: Colors.redAccent,

            ),
          )
        ),
      ),
    );
  }
}

class UnknownRoute extends StatelessWidget {
  const UnknownRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

