import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/order.dart';

class PopularFood extends StatefulWidget {
  PopularFood(this.name, this.subName,this.img,this.price,{super.key});
  String name;
  String img;
  String subName;
  int price;

  @override
  State<PopularFood> createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFood> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Ink(
          child: InkWell(
            //borderRadius: BorderRadius.circular(20),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Order(img: widget.img, price: widget.price,)));
            },
            child: Container(
              height: 250,
              width: 362,
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 5,
                  ),
                ]
              ),
            ),
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Order(img: widget.img, price: widget.price,)));
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20+24, vertical: 35),
            width: 336,
            height: 135,
            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(20),
            ),
           /// child: Image.asset('assets/spburger.jpg',),
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Order(img: widget.img, price: widget.price,)));
          },
          child: Container(
            margin: const EdgeInsets.fromLTRB(75+24, 0, 75+24,0),
            width: 170,
            height: 160,
            decoration: BoxDecoration(
              ///color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(widget.img,fit: BoxFit.fill,),
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Order(img: widget.img, price: widget.price,)));
          },
          child: Container(
            margin: const EdgeInsets.fromLTRB(24+20,155+32,24,0),
            width: 330,
            height: 80,
            decoration: BoxDecoration(
             /// color: Colors.brown,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(widget.name,
                      style: TextStyle(color: Colors.black, fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Text("${widget.price}৳",
                      style: const TextStyle(color: Colors.black, fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Text(widget.subName,
                  style: TextStyle(color: Colors.blueGrey, fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
