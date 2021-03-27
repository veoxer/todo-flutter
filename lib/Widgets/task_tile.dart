import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_checkbox.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String name;
  final Function toggleCheckBox;
  final Function deleteTaskCallBack;
  TaskTile(
      {this.name,
      this.isChecked,
      this.toggleCheckBox,
      this.deleteTaskCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTaskCallBack,
      title: Text(
        name,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkboxState: isChecked,
        toggleCheckboxState: toggleCheckBox,
      ),
    );
  }
}
