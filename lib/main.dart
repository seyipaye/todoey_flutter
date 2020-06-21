import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/screens/task_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider<MutableTodoList>(
      create: (_) => MutableTodoList(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: TaskScreen(),
        theme: ThemeData.light(),
      ),
    ),
  );
}
