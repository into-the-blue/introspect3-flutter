import 'package:get/get.dart';

class TaskListStore extends GetxController {
  var count = 0.obs;

  increment() {
    count++;
  }
}
