import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10) ,
              child: Image.asset('lib/assets/images/logo.png' ,),
            ),
            SizedBox(height: 24,)
          ],
        )
      ),
    );
  }
}