import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_list.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/screens/add_task_screen.dart';

// class TaskScreen extends StatelessWidget {
//   List<Task> tasks = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlueAccent,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: EdgeInsets.only(top: 50.0, left: 30.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CircleAvatar(
//                   child: Icon(
//                     Icons.list,
//                     color: Colors.lightBlueAccent,
//                     size: 30.0,
//                   ),
//                   backgroundColor: Colors.white,
//                   radius: 30.0,
//                 ),
//                 SizedBox(
//                   height: 10.0,
//                 ),
//                 Text(
//                   'Todoey',
//                   style: TextStyle(
//                     fontWeight: FontWeight.w700,
//                     color: Colors.white,
//                     fontSize: 40.0,
//                   ),
//                 ),
//                 Text(
//                   '12 Tasks',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 15.0,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 35.0,
//           ),
//           TaskList(),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.lightBlueAccent,
//         child: Icon(Icons.add),
//         onPressed: () {
//           showModalBottomSheet(
//             context: context,
//             builder: (context) => AddTaskScreen(
//               addTask: () {
//                 tasks.add(Task());
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasksList = [];
  String newTaskName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(
              setTaskName: (value) {
                newTaskName = value;
              },
              addTask: () {
                setState(() {
                  tasksList.add(Task(name: newTaskName));
                });
                Navigator.pop(context);
              },
            ),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50.0, left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30.0,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 40.0,
                  ),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35.0,
          ),
          TaskList(
            tasks: tasksList,
          ),
        ],
      ),
    );
  }
}
