import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'store/taskList.store.dart';
import '../../stores/index.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({Key? key}) : super(key: key);

  void dispose() {}

  @override
  Widget build(BuildContext context) {
    final TaskListStore homeStore = TaskListStore();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Center(
          child: Column(
        children: [
          Obx(() => Text('Count ${homeStore.count}')),
          ElevatedButton(
              onPressed: homeStore.increment, child: const Text('Press'))
        ],
      )),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        notchMargin: 6,
        child: Row(
          children: const [Text('Bottom')],
        ),
      ),
    );
  }
}
