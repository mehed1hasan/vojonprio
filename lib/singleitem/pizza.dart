import 'package:flutter/material.dart';

import '../widgets/popularfood.dart';

class Pizza extends StatefulWidget {
  Pizza({super.key});

  @override
  State<Pizza> createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PopularFood("a", "a",'assets/pizza3.jpg', 650),
          PopularFood("a", "a",'assets/pizza2.jpg', 700),
          PopularFood("a", "a",'assets/pizza1.jpg', 600),
          PopularFood("a", "a",'assets/pizza4.jpg', 550),
         // PopularFood('assets/bgr1.jpg'),
        ],
      )
    );
  }
}
