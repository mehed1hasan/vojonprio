import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/home.dart';

class FoodName1 extends StatefulWidget {
  FoodName1(this.name, this.img,{super.key});
  ///List<Foods>food;
  String name;
  String img;
  @override
  State<FoodName1> createState() => _FoodName1State();
}

class _FoodName1State extends State<FoodName1> {
  @override

  int selected = 0;
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Ink(
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: (){
              setState(() {
                selected =1;
              });
            },
            child: Container(
              height: 176,
              width: 95,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: selected==1 ? Colors.brown : Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 22.5+10, vertical: 20),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(widget.img),
        ),

      ],
    );
  }
}
