import 'package:food_app/widgets/count.dart';
import 'package:flutter/material.dart';

import 'rate.dart';
import 'home.dart';

class Cart extends StatefulWidget {
  Cart(this.img,this.numberOfOrder, this.price,{super.key});
  String img;
  int numberOfOrder;
  int price;
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int number = 0;
  int tk=0;

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
            margin: const EdgeInsets.fromLTRB(20, 80, 15, 20),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: const Icon(Icons.arrow_back_ios, size:30, color: Colors.black87),
                ),
                const SizedBox(width: 150,),
                const Text("Cart",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black87
                ),
               ),
              ],
            ),
          ),

          Container(
            width: 380,
            height: 140,
            margin: const EdgeInsets.fromLTRB(15, 160, 15, 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  width: 110,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      //color: Colors.green.shade400,
                  ),
                  child: Image.asset(widget.img, fit: BoxFit.fill,),
                ),
                const SizedBox(width: 20,),
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Text("Cheese Burger",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                    Spacer(),

                    ///Count(),  /// Count /////////

            Container(
                width: 120,
                height: 50,
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
                          //color: Colors.brown,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Icon(Icons.remove, color: Colors.red,),
                      ),
                    ),
                    Spacer(),

                    Text("$number",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),

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
                          // color: Colors.brown,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Icon(Icons.add,color: Colors.red,),
                      ),
                    ),
                  ],
                )
            ),

                  ],
                ),
                const SizedBox(width: 30,),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Icon(Icons.cancel_outlined, color: Colors.red, size: 30,),
                      Spacer(),
                      Expanded(
                        child: Text("${widget.price*number}৳", overflow:TextOverflow.ellipsis ,
                          style: TextStyle(fontSize: 16, color: Colors.black87, fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
              ],
            ),
          ),


          Container(
            width: 380,
            height: 70,
            margin: const EdgeInsets.fromLTRB(15, 380, 15, 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,
                shape: RoundedRectangleBorder( //to set border radius to button
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: const Row(
               // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Apply Coupons", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward, color: Colors.white,)
                ],
              ),
            ),
          ),

          Container(
            width: 378,
            height: 1,
            margin: const EdgeInsets.fromLTRB(15, 80+400, 15, 15),
            color: Colors.white,

          ),

          Container(
            width: 378,
            height: 30,
            margin: const EdgeInsets.fromLTRB(15, 25+10+80+400, 15, 15),
            //color: Colors.white,
            child: Row(
              children: [
                Text("Item Total",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.blueGrey),),
                Spacer(),
                Text("${widget.price*number}",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.blueGrey),),

              ],
            ),
          ),

          Container(
            width: 378,
            height: 30,
            margin: const EdgeInsets.fromLTRB(15, 75+10+80+400, 15, 15),
           // color: Colors.white,
           /* child: const Text("Proceed to payment method",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),*/
            child: Row(
              children: [
                Text("Delivery Charge",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.blueGrey),),
                Spacer(),
                Text("50৳",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.blueGrey),),

              ],
            ),
          ),

          Container(
            width: 378,
            height: 60,
            margin: const EdgeInsets.fromLTRB(15, 125+10+80+400, 15, 15),
           // color: Colors.white,
            child: Row(
              children: [
                Text("Total:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,),),
                Spacer(),
                Text("${number*widget.price+50}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),

              ],
            ),
          ),


          Container(
            width: 350,
            height: 70,
            margin: const EdgeInsets.fromLTRB(28, 400+320, 28, 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                shape: RoundedRectangleBorder( //to set border radius to button
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Rate(widget.img)));
              },
              child: const Text("Proceed to your method"
                ,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
            ),
          ),

        ],
      ),
    );
  }
}
