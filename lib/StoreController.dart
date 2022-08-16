import 'package:get/get.dart';

class CounterController extends GetxController {
  final count = 2.obs;

  void increment() {
    // count.value++;
    count.value *= count.value;
  }
}

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => CounterController(),
    );
  }
}
