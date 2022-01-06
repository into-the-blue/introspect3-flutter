import '../store/taskList.store.dart';

class TaskListService {
  final TaskListStore store;
  TaskListService(this.store);

  increaseCount() {
    store.increment();
  }
}
