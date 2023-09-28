import 'package:food_app/widgets/popularfood.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Burger extends StatefulWidget {
  Burger({super.key});

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            PopularFood(
              "Burger",
              "Beef Cheese Burger",
              'assets/bgr1.jpg',
              400,
            ),
            PopularFood(
              "Burger",
              "Beef Cheese Burger",
              'assets/bgr4.jpg',
              340,
            ),
            PopularFood(
              "Burger",
              "Beef Cheese Burger",
              'assets/bgr5.jpg',
              450,
            ),
            PopularFood(
             "Burger",
             "Beef Burger",
             'assets/bgr2.jpg',
             350,
            ),
            PopularFood(
              "Burger",
              "Chicken Burger",
              'assets/bgr3.jpg',
              380,
            ),
          /*  PopularFood("a", "a",'assets/bgr4.jpg', 320),
            PopularFood("a", "a",'assets/bgr5.jpg', 450),
            PopularFood("a", "a",'assets/bgr2.jpg', 350),
            PopularFood("a", "a",'assets/bgr3.jpg', 380),*/
          ],
        )
    );
  }
}
