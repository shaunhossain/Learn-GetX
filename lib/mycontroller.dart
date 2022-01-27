import 'package:get/get.dart';


class MyController extends GetxController{
  int count = 0;

  void increment(){
    count++;
    update(['txtCount']);
  }
  void decrement(){
    count--;
    update(['txtCount']);
  }
}