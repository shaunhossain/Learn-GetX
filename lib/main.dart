import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:learn_getx/language.dart';
import 'package:learn_getx/view/my_home_page.dart';

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
      translations: Language(),
      locale: const Locale('bn','BD'),
      fallbackLocale: const Locale('en','US'),
      home: const MyHomePage(title: 'Learn GetX'),
    );
  }
}
