import 'package:flutter/material.dart';
import 'package:task_app/pages/intropage.dart';

void main(){
  runApp(TaskApp());
}

class TaskApp extends StatelessWidget{
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task App',
      home: IntroPage()
    );
  }
}