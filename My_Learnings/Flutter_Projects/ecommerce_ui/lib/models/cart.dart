import 'package:flutter/material.dart';
import 'package:todo_app2/models/shoe.dart';

class Cart extends ChangeNotifier{
  //list of Shoes
  List <Shoe> shoeList=[
    Shoe(
        name: 'Air Jordan',
        price: '230',
        imagePath: 'lib/assets/images/Nike_shoe.png',
        description: 'Light weight and premium material everywhere to use'
    ),
    Shoe(
        name: 'Shox Z SE',
        price: '310',
        imagePath: 'lib/assets/images/Shoe2.png',
        description: 'Casual shoe premium look'
    ),
    Shoe(
        name: 'Revolution 7',
        price: '260',
        imagePath: 'lib/assets/images/Shoe_3.png',
        description: 'Running with comfort and cool'
    ),
    Shoe(
        name: 'Nike C1TY',
        price: '430',
        imagePath: 'lib/assets/images/Shoe4.png',
        description: 'New and trendy'
    ),
    Shoe(
        name: 'Nike Dunk',
        price: '500',
        imagePath: 'lib/assets/images/shoe5.png',
        description: 'Low Retro premium look'
    ),

  ];
  //shoe list in cart
List <Shoe> userCart=[];

  //get Shoe list
  List<Shoe> getShoeList(){
    return shoeList;
  }

  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  //add in cart
  void addItemtoCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove in cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
