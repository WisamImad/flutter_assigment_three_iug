import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/todo_app/models/task_model.dart';
import 'package:state_managment/todo_app/provider/todo_provider.dart';

class TaskWidget extends StatelessWidget {
  Task task;
  TaskWidget(this.task);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: CheckboxListTile(
        secondary: IconButton(
            onPressed: () {
              Provider.of<TodoProvider>(context, listen: false)
                  .deleteTask(task);
            },
            icon: Icon(Icons.delete)
        ),
        value: task.isComplete,
        onChanged: (v) {
          Provider.of<TodoProvider>(context, listen: false).updateTask(task);
        },
        title: Text(task.title),
      ),
    );
  }
}
