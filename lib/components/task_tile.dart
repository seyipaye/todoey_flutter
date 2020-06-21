import 'package:flutter/material.dart';
import 'package:todoeyflutter/screens/task_screen.dart';

class TaskTile extends StatefulWidget {
  final TodoItem item;
  final Function deleteItem;

  TaskTile({this.item, this.deleteItem});
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: widget.deleteItem,
      child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 40.0),
          title: Text(
            widget.item.text,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
                decoration:
                    widget.item.isDone ? TextDecoration.lineThrough : null),
          ),
          trailing: Checkbox(
            value: widget.item.isDone,
            activeColor: Colors.lightBlueAccent,
            onChanged: (newValue) {
              setState(() {
                widget.item.isDone = !widget.item.isDone;
              });
            },
          )),
    );
  }
}
