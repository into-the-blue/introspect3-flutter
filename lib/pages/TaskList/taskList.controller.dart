import './service/taskList.service.dart';

class TaskListController {
  TaskListService service;
  TaskListController(this.service);

  onPressButton() {
    service.increaseCount();
  }
}
