import 'package:get/get.dart';
import 'package:learn_getx/my_controller.dart';
class AllControllerBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
  }

}