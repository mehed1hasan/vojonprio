import 'package:food_app/pages/cart.dart';
import 'package:food_app/widgets/size_button_decoration.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widgets/size.dart';

import 'home.dart';


class Order extends StatefulWidget {
  Order({super.key, required this.img,required this.price});
  String img;
  int price;

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int number = 0;
  double pading=30;
  int select=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      body: Stack(
        children: [

          Container(
            width: 400,
            height: 50,
            //color: Colors.red,
            margin: const EdgeInsets.fromLTRB(20, 70, 15, 20),
            child: Row(
              children: [
                /*ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade400,
                  ),
                  child:  Icon(Icons.arrow_back_ios, size:30, color: Colors.black87),
                ),*/
                InkWell(
                  onTap: (){
                    Navigator.pop(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Icon(Icons.arrow_back_ios, size:30, color: Colors.black87),
                ),
                const Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green.shade400,
                    boxShadow: const [
                    BoxShadow(
                        blurRadius: 10.0,
                        color: Colors.black38
                     ),
                   ],
                  ),
                  child: Icon(Icons.favorite_outline_sharp, color: Colors.red.shade700, size: 30,),
                )
              ],
            ),
          ),


          Container(
            width: 400,
            height: 150,
            //color: Colors.red,
            margin: const EdgeInsets.fromLTRB(20, 10+70+50, 20, 20),
            child: const Column(
              children: [
                Text("Chipotle Cheesy Chicken",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    color: Colors.black87
                  ),
                ),
                SizedBox(height: 25,),
                Text("A signature flame-grilled Chicken patty",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: Colors.blueGrey
                  ),
                ),
                SizedBox(height: 4,),
                Text("topped with smoked beef",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),

/// Condition
/// size change
        Size(pad:32.0, set:2, img:widget.img),
         /* Column(
              children: [
                if(select==1)...[
                 // ButtonColor();
                  Size(45, 1, widget.img),
                ]else if(select==2)...[
                  Size(32, 1, widget.img),
                ]
                else...[
                    Size(20, 1, widget.img),
                  ]
              ]),
*/
/// Size button decoration

        SizeButtonDecoration(set:select, img:widget.img),

/// small


/// medium


/// large

          Container(
            width: 100,
            height: 80,
            margin: const EdgeInsets.fromLTRB(20, 750, 0, 0),
            //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Price", style: TextStyle(fontSize: 15, color: Colors.blueGrey, fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                Text("${widget.price}৳",
                  style: TextStyle(fontSize: 24, color: Colors.black87, fontWeight: FontWeight.w600),)
              ],
            ),
          ),


          Container(
            width: 200,
            height: 60,
            margin: const EdgeInsets.fromLTRB(105, 650, 0, 0),
            //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            //color: Colors.white,
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(number>0)number--;
                    });
                  },
                  child: Container(
                    height: 40, width: 40,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.remove),
                  ),
                ),
                Spacer(),

                Text("$number",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),),

                Spacer(),

                GestureDetector(
                  onTap: (){
                    setState(() {
                      number++;
                    });
                  },
                  child: Container(
                    height: 40, width: 40,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.add),
                  ),
                ),
                
              ],
            )
            
          ),

          Container(
            width: 190,
            height: 75,
            margin: const EdgeInsets.fromLTRB(225, 770, 0, 0),
            //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            /*decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    topLeft: Radius.circular(12),
                ),
                color: Colors.brown,
            ),*/
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                shape: RoundedRectangleBorder( //to set border radius to button
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
              ),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Cart(widget.img, number, widget.price)));
              },
              child: Row(
                children: [
                  Icon(Icons.shopping_bag_outlined, color: Colors.white, size: 30,),
                  SizedBox(width: 10),
                  Text("Go to Cart", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
