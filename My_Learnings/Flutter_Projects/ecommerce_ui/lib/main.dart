import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app2/models/cart.dart';
import 'package:todo_app2/pages/into_page.dart';

void main(){
  runApp(Ecommerce());
}

class Ecommerce extends StatelessWidget{
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context,child)=> MaterialApp(
          debugShowCheckedModeBanner: false,
          home: IntroPage(),
      ),
    );
  }
}