import 'package:flutter/material.dart';
import 'package:task_app_1/pages/home_page.dart';

class IntroPage extends StatefulWidget{
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(10) ,
                child: Image.asset('lib/assets/images/logo.png' ,),
              ),
              SizedBox(height: 24,),

              Text(
                "Task Manager ",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold
                )),
              Text("Store your daily tasks"),
              SizedBox(height: 24,),
              ElevatedButton(
                  onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));

                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.blueGrey,
                  ),
                  child: Text("Get Started -->")
              )
            ],
          )
      ),
    );
  }
}