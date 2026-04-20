import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(NotesApp());
}
class NotesApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Notes App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: Scaffold(
        body: Text("HI.."),
      ),
    );
  }
}