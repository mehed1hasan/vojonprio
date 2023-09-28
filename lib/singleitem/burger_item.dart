import 'package:flutter/material.dart';

import '../widgets/popularfood.dart';

class BurgerItem extends StatefulWidget {
  BurgerItem({super.key});

  @override
  State<BurgerItem> createState() => _BurgerItemState();
}

class _BurgerItemState extends State<BurgerItem> {
  @override

  List<Foods> cakeItem = [
    const Foods(
      name: "Burger",
      subName: "Beef Cheese Burger",
      img: 'assets/bgr1.jpg',
      price: 400,
    ),
    const Foods(
      name: "Burger",
      subName: "Beef Cheese Burger",
      img: 'assets/bgr4.jpg',
      price: 340,
    ),
    const Foods(
      name: "Burger",
      subName: "Beef Cheese Burger",
      img: 'assets/bgr5.jpg',
      price: 450,
    ),
    const Foods(
      name: "Burger",
      subName: "Beef Burger",
      img: 'assets/bgr2.jpg',
      price: 350,
    ),
    const Foods(
      name: "Burger",
      subName: "Chicken Burger",
      img: 'assets/bgr3.jpg',
      price: 380,
    ),

  ];

  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      body: SafeArea(
        child: Column(
          children: [

            const SizedBox(height: 10,),
            const Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.subject, size: 30,),
                Spacer(),
                Icon(Icons.location_on_sharp, size: 30,color: Colors.red,),
                SizedBox(width: 8,),
                Text("Dhaka, BD", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                Spacer(),
                InkWell(
                  child: CircleAvatar(
                    ///radius: Radius.circular(30),
                    radius: 25,
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRytbwiC7K7lQdEj5KGGgbiWEYgXlUMtgoK5Q&usqp=CAU'),
                  ),
                ),
                SizedBox(width: 10,),
              ],
            ),
            const SizedBox(height: 10,),
            const Text("Hey!", style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w600),),
            const Text("Let's get your order", style: TextStyle(color: Colors.blueGrey, fontSize: 16, fontWeight: FontWeight.w500),),
            const SizedBox(height: 10,),

            /// search bar

            Container(
              height: 48,
              width: 345,
              //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 15),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),

              child: TextFormField(
                keyboardType: TextInputType.text,

                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Colors.blueGrey,),
                  labelText: "Search our delicious burgers",
                  labelStyle: const TextStyle(
                    fontSize: 13,
                    color: Colors.blueGrey,
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(5),
                  ),

                ),
              ),

            ),
            const SizedBox(height: 10,),




            Expanded(
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
          ],
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