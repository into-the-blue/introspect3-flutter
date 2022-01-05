import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './store/home.store.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeStore homeStore = HomeStore();
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
          children: [const Text('Bottom')],
        ),
      ),
    );
  }
}
