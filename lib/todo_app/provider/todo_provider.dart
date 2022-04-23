import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

class TodoProvider extends ChangeNotifier {
  List<Task> allTasks = [
    Task('Playing football'),
    Task('Praying alfajer', true),
    Task('Praying aser'),
    Task('Studying for exams'),
    Task('Reading quran'),
    Task('Eating sohor meal', true),
  ];
  updateTask(Task task) {
    int index = allTasks.indexOf(task);
    allTasks[index].isComplete = !allTasks[index].isComplete;
    notifyListeners();
  }

  deleteTask(Task task) {
    allTasks.remove(task);
    notifyListeners();
  }

  deleteAllTask() {
    allTasks.clear();
    notifyListeners();
  }
}
