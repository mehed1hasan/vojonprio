import 'package:flutter/material.dart';

import '../widgets/popularfood.dart';

class Cake extends StatefulWidget {
  Cake({super.key});

  @override
  State<Cake> createState() => _CakeState();
}

class _CakeState extends State<Cake> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            PopularFood("a", "a",'assets/cake3.jpg', 1000),
            PopularFood("a", "a",'assets/cake2.jpg', 800),
            PopularFood("a", "a",'assets/cake4.jpg',1100),
            PopularFood("a", "a",'assets/cake5.jpg', 1200),
            // PopularFood('assets/bgr1.jpg'),
          ],
        )
    );
  }
}
