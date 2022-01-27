import 'package:get/get.dart';
import 'package:learn_getx/student.dart';

class MyController extends GetxController{
  final Rx<Student> student = Student(name: "shaun",age: 26).obs;

  void lowCaseToUpperCase(){
    student.update((value) {
      value?.name = value.name.toUpperCase();
    });
  }
}