import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/student.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var count = 0.obs;
  //
  // void increment(){
  //   count++;
  // }
  //
  // void decrement(){
  //   count--;
  // }

  final Rx<Student> student = Student(name: "shaun",age: 26).obs;


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
            Obx(()=>Text("Name : ${student.value.name}")),

            // MaterialButton(
            //   onPressed: ()=> increment(),
            //   child: const Text("Increment"),
            //   color: Colors.lightBlue,
            // ),
            MaterialButton(
              onPressed: (){
                //student.name.value = student.name.value.toUpperCase();
                student.update((value) {
                  value?.name = value.name.toUpperCase();
                });
              },
              child: const Text("Upper Case"),
              color: Colors.lightBlue,
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
