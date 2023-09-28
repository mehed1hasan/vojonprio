import 'package:flutter/material.dart';

import '../widgets/popularfood.dart';

class CakeItem extends StatefulWidget {
  CakeItem({super.key});

  @override
  State<CakeItem> createState() => _CakeItemState();
}

class _CakeItemState extends State<CakeItem> {
  @override

  List<Foods> cakeItem = [
    const Foods(
      name: "Cake",
      subName: "Chocolate Cake",
      img: 'assets/cake5.jpg',
      price: 1200,
    ),
    const Foods(
      name: "Cake",
      subName: "Chocolate Cake",
      img: 'assets/cake4.jpg',
      price: 1100,
    ),
    const Foods(
      name: "Cake",
      subName: "Cream Cake",
      img: 'assets/cake2.jpg',
      price: 850,
    ),
    const Foods(
      name: "Cake",
      subName: "Fruits and Cream Cake",
      img: 'assets/cake3.jpg',
      price: 950,
    ),
    const Foods(
      name: "Cake",
      subName: "Cream Cake",
      img: 'assets/cake2.jpg',
      price: 850,
    ),

  ];

  int index = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      body: SafeArea(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: cakeItem.length,
            itemBuilder: (context, index){
              final cake = cakeItem[index];
              return PopularFood(
                  cake.name,
                  cake.subName,
                  cake.img,
                  cake.price
              );
            }
        ),
      ),

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.black26,
          labelTextStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
        ),
        child: NavigationBar(
          height: 75,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(
                () => this.index = index,
          ),
          animationDuration: Duration(seconds: 2),
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.favorite_outline_sharp),
                selectedIcon: Icon(Icons.favorite),
                label: "Favorites"),
            NavigationDestination(
                icon: Icon(Icons.account_box_outlined),
                selectedIcon: Icon(Icons.account_box),
                label: "Account"),
            NavigationDestination(
              icon: Icon(Icons.more_horiz_outlined),
              selectedIcon: Icon(Icons.more),
              label: "More",
            ),
          ],
        ),
      ),
    );
  }
}


class Foods{
  final String name;
  final String subName;
  final String img;
  final int price;
  const Foods({
    required this.name,
    required this.subName,
    required this.img,
    required this.price,
  });
}