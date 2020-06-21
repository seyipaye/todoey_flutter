import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/screens/task_screen.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 25.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
                fontWeight: FontWeight.w400),
          ),
          TextField(
            style: TextStyle(fontSize: 20.0),
            autofocus: true,
            onChanged: (value) {
              text = value;
            },
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            onPressed: () {
              Provider.of<MutableTodoList>(context, listen: false)
                  .addNewItem(TodoItem(text: text));
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
