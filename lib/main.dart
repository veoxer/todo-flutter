import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TaskData data = TaskData();
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      // create: (_) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
