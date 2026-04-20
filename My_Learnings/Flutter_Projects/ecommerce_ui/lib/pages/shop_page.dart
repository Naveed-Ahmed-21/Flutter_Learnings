import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app2/models/shoe.dart';
import '../components/shoe_tile.dart';
import '../models/cart.dart';

class ShopPage extends StatefulWidget{
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //add shoe to cart
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemtoCart(shoe);

    //Alert the user , Shoe Successfully added
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Successfully Added!..'),
          content: Text('Check your cart'),

    ));
  }
  @override
  Widget build(BuildContext context) {
   return Consumer<Cart>(
     builder: (context,value,child) => Column(
       children: [
         Container(
           padding: EdgeInsets.all(12),
           margin: EdgeInsets.symmetric(horizontal: 25),
           decoration: BoxDecoration(
               color: Colors.grey[200],
               borderRadius: BorderRadius.circular(10)
           ),
           child:Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('Search',style: TextStyle(color: Colors.grey),),
               Icon(Icons.search,color: Colors.grey,),
             ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 25),
           child: Text('Make a good choice with us...',
             style: TextStyle(color: Colors.grey[700]),),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 25.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.end,
             children: [
               Text('Hot Picks..🔥',
                   style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 24
                   )),
               Text('See all..',
                 style: TextStyle(
                     color: Colors.blue,
                     fontWeight: FontWeight.bold
                 ),)
             ],
           ),
         ),
         const SizedBox(height: 10,),

         //list of shoes for sales
         Expanded(child:
         ListView.builder(
             itemCount: 5,
             scrollDirection: Axis.horizontal,
             itemBuilder:( context, index){
               //get shoe from the shop list
               Shoe shoe = value.getShoeList()[index];

               //return shoe
               return ShoeTile(
                 shoe:shoe,
                 onTap: ()=> addShoeToCart(shoe),
               );
             }
         )
         ),
         Padding(
           padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
           child: Divider(color: Colors.grey[400]),
         )
       ],
     )
     );
  }
}
