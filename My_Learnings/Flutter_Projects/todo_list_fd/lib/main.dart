import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String displayTxt="No Tasks Are Available";
  TextEditingController textController = TextEditingController();
  List <String> taskLi =[];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('To-Do List App'),backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(child:
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: textController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Enter the task')
                    ),
                  ),
                ),
                ),
                MaterialButton(

                  color: Colors.white,
                  height: 50,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: (){
                    setState(() {
                      taskLi.add(textController.text);
                      textController.clear();
                    });
                  },
                  child: Text('Add'),
                ),
              ],
            ),

            Flexible(

              child: ListView.builder(
                itemCount: taskLi.length,
                itemBuilder: (context, index){
                  return  Row(
                    children: [
                      Expanded(child: Container(
                        padding: EdgeInsets.all(20),
                        child: Text(taskLi[index]),
                      )),
                      MaterialButton(
                          child: Icon(Icons.delete),
                          onPressed:(){
                            setState(() {
                              taskLi.removeAt(index);
                            });
                          }
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );

  }
}