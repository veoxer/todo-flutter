import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Widgets/task_tile.dart';
import 'package:todoey/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: Consumer<TaskData>(builder: (
          context,
          taskData,
          child,
        ) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final currentTask = taskData.tasks[index];
              return TaskTile(
                name: currentTask.name,
                isChecked: currentTask.isChecked,
                toggleCheckBox: (checkedState) {
                  taskData.updateTask(currentTask);
                },
                deleteTaskCallBack: () {
                  taskData.deleteTask(currentTask);
                },
              );
            },
            itemCount: context.watch<TaskData>().taskCount,
          );
        }),
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
