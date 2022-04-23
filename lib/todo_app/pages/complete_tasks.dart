import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/todo_app/provider/todo_provider.dart';
import 'package:state_managment/todo_app/widgets/task_widget.dart';

class CompleteTasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: Provider.of<TodoProvider>(context)
            .allTasks
            .where((element) => element.isComplete).length,
        itemBuilder: (context, index) {
          return TaskWidget(
              Provider.of<TodoProvider>(context)
              .allTasks
              .where((element) => element.isComplete).toList()[index]);
        });
  }
}
