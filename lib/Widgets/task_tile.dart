import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_checkbox.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String name;
  final Function toggleCheckBox;
  TaskTile({this.name, this.isChecked, this.toggleCheckBox});
  @override
  Widget build(BuildContext context) {
    return ListTile(
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
