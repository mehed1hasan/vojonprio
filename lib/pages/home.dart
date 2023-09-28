import 'package:food_app/singleitem/pizza.dart';
import 'package:food_app/widgets/foodname.dart';
import 'package:flutter/material.dart';

import '../singleitem/burger.dart';
import '../singleitem/cake.dart';
import 'account.dart';
import 'favorites.dart';
import 'more.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  List<Foods>foods = [
    const Foods(
      fdName: "Burger",
      fdImgPath: 'assets/logo1.jpg',
    ),
    const Foods(
      fdName: "Burger",
      fdImgPath: 'assets/logo1.jpg',
    ),
    const Foods(
      fdName: "Burger",
      fdImgPath: 'assets/logo1.jpg',
    ),
    const Foods(
      fdName: "Burger",
      fdImgPath: 'assets/logo1.jpg',
    ),
  ];

  int index=0;
  final bottomScreen = [
    Home(),
    Favorites(),
    Account(),
    More(),
  ];

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.green.shade400,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.fromLTRB(20,60,20,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
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
                  )
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
              const SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    FoodName(item: "Burger", img:'assets/burgericon.jpg'),
                    const SizedBox(width: 10,),
                    FoodName(item:"Pizza", img:'assets/pizzaicon.jpg'),
                    const SizedBox(width: 10,),
                    FoodName(item:"Cake",img:'assets/cakeicon.jpg'),
                    const SizedBox(width: 10,),
                    FoodName(item:"Burger",img:'assets/burgericon.jpg'),
                    const SizedBox(width: 10,),
                    FoodName(item:"Pizza",img:'assets/pizzaicon.jpg'),
                    const SizedBox(width: 10,),
                    FoodName(item:"Cake",img:'assets/cakeicon.jpg'),
                  ],
                ),
              ),
              const Row(
                children: [
                  Text("Popular",
                    style: TextStyle(color: Colors.black, fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text("View all",
                    style: TextStyle(color: Colors.red, fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.arrow_forward_ios, size:12, color: Colors.red,),
                ],
              ),

              ///FoodName().createState()

              /// call burger widget
              Burger(),
              /// call pizza widget
              Pizza(),
              /// call Cake widget
              Cake(),


            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.black26,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 15, fontWeight: FontWeight.w500)
          ),
        ),
        child: NavigationBar(
          height: 75,
          selectedIndex: index,
          onDestinationSelected: (index) =>
              setState(() => this.index = index,),

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
              label: "More",),

          ],
        ),
      ),
    );
  }
}

class Foods{

  final String fdName;
  final String fdImgPath;

  const Foods({
    required this.fdName,
    required this.fdImgPath,
  });

}











/*


import 'package:burger_ui/widgets/foodname.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  List<Foods>foods = [
    const Foods(
      fdName: "Burger",
      fdImgPath: 'assets/logo1.jpg',
    ),
    const Foods(
      fdName: "Burger",
      fdImgPath: 'assets/logo1.jpg',
    ),
    const Foods(
      fdName: "Burger",
      fdImgPath: 'assets/logo1.jpg',
    ),
    const Foods(
      fdName: "Burger",
      fdImgPath: 'assets/logo1.jpg',
    ),
  ];

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
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
                  )
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
              const SizedBox(height: 20,),
              SizedBox(
                height: 200,
                width: 100,
                child: ListView.builder(
                   // shrinkWrap: true,
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemCount: foods.length,
                    itemBuilder: (BuildContext context, int index){
                      final food = foods[index];
                      FoodName(food.fdName, food.fdImgPath);
                    }
                ),
              ),
              /*Container(
                width: 500,
                height: 500,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ListView.builder(
                  padding: EdgeInsets.all(10),
                  scrollDirection: Axis.vertical,
                  itemCount: foods.length,
                  itemBuilder: (BuildContext context, int index){
                    final food = foods[index];
                    FoodName(food.fdName, food.fdImgPath);
                  }
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}

class Foods{

  final String fdName;
  final String fdImgPath;

  const Foods({
    required this.fdName,
    required this.fdImgPath,
  });

}
 */