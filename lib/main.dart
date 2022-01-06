import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './pages/TaskList/taskList.page.dart';

const homePage = TaskListPage();
const GetMaterialApp app = GetMaterialApp(title: 'Introspect3', home: homePage);

void main() {
  runApp(app);
}
