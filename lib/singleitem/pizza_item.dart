import 'package:flutter/material.dart';

import '../widgets/popularfood.dart';

class PizzaItem extends StatefulWidget {
  PizzaItem({super.key});

  @override
  State<PizzaItem> createState() => _PizzaItemState();
}

class _PizzaItemState extends State<PizzaItem> {
  @override

  List<Foods> pizzaItem = [
    const Foods(
      name: "Pizza",
      subName: "Special Beef Pizza",
      img: 'assets/pizza3.jpg',
      price: 650,
    ),
    const Foods(
      name: "Pizza",
      subName: "Special Cheese Pizza",
      img: 'assets/pizza4.jpg',
      price: 580,
    ),
    const Foods(
      name: "Pizza",
      subName: "Special Fruit Pizza",
      img: 'assets/pizza1.jpg',
      price: 550,
    ),
    const Foods(
      name: "Pizza",
      subName: "Special Cheese Pizza",
      img: 'assets/pizza2.jpg',
      price: 600,
    ),
    const Foods(
      name: "Pizza",
      subName: "Special Beef Pizza",
      img: 'assets/pizza3.jpg',
      price: 650,
    ),

  ];

  int index=0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      body: SafeArea(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: pizzaItem.length,
            itemBuilder: (context, index){
              final pizza = pizzaItem[index];
              return PopularFood(
                  pizza.name,
                  pizza.subName,
                  pizza.img,
                  pizza.price
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