import 'package:flutter/material.dart';
import 'package:todo_app2/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function ()? onTap;

  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),
          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(shoe.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          //price+details
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    Text(shoe.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),

                    SizedBox(height: 4,),

                    //price
                    Text('\$${shoe.price}', style: TextStyle(
                      color: Colors.grey,
                    ),),

                  ],
                ),
                //Add Button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child:
                    Icon(Icons.add, color: Colors.white,),
                  ),
                )
              ],
            ),
          ),

          //button to add to cart
        ],
      ),
    );
  }
}
