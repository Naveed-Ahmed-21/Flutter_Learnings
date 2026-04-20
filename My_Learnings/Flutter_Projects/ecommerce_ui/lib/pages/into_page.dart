import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'lib/assets/images/Nike_Logo.png',
                height: 240,
              ),
            ),
            SizedBox(height: 48,),
            //title
            Text('Just Do It',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),

            SizedBox(height: 38,),
            //subtitle
            Text('Brand new sneakers and fashion collections',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.grey[600]
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 38,),

            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[900],
                ),
                height: 60,
                width: 200,
                padding: EdgeInsets.all(20),
                child: Text('Shop Now',
                  style: TextStyle(color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,),
              ),
            )
          ],
        ),
      ),
    );
  }
}










