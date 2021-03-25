import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList({this.tasks});
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              name: widget.tasks[index].name,
              isChecked: widget.tasks[index].isChecked,
              toggleCheckBox: (checkedState) {
                setState(() {
                  widget.tasks[index].toggleDone();
                });
              },
            );
          },
          itemCount: widget.tasks.length,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
