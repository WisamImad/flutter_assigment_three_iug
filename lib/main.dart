import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/news_app/news_app.dart';
import 'package:state_managment/todo_app/pages/todo_home_page.dart';
import 'package:state_managment/todo_app/provider/todo_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<TodoProvider>(
        create: (context) {
          return TodoProvider();
        },
        child: MaterialApp(theme: ThemeData.light(), home: TodoHomePage())),
  );
}
