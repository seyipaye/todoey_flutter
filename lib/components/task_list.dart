import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/components/task_tile.dart';
import 'package:todoeyflutter/screens/task_screen.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MutableTodoList>(builder: (_, mutableTodoList, child) {
      return ListView.builder(
        itemCount: mutableTodoList.length,
        itemBuilder: (context, index) {
          return TaskTile(
            item: mutableTodoList.todoList[index],
            deleteItem: () {
              mutableTodoList.removeAt(index);
            },
          );
        },
      );
    });
  }
}
