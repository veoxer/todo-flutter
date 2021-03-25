import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTask;
  final Function setTaskName;
  AddTaskScreen({this.addTask, this.setTaskName});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 25.0),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: setTaskName,
            ),
            TextButton(
              onPressed: addTask,
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
