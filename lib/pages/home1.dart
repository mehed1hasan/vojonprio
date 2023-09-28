import 'package:food_app/singleitem/pizza.dart';
import 'package:food_app/widgets/foodname.dart';
import 'package:flutter/material.dart';

import '../singleitem/burger.dart';
import '../singleitem/cake.dart';
import '../singleitem/cake_item.dart';
import '../singleitem/pizza_item.dart';
import 'account.dart';
import '../singleitem/burger_item.dart';
import 'favorites.dart';
import 'home.dart';
import 'more.dart';

class Home1 extends StatefulWidget {
  Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  List<Foods> foods = [
    const Foods(
      fdName: "Burger",
      fdImgPath: 'assets/burgericon.jpg',
    ),
    const Foods(
      fdName: "Pizza",
      fdImgPath: 'assets/pizzaicon.jpg',
    ),
    const Foods(
      fdName: "Cake",
      fdImgPath: 'assets/cakeicon.jpg',
    ),
    const Foods(
      fdName: "Burger",
      fdImgPath: 'assets/burgericon.jpg',
    ),
    const Foods(
      fdName: "Pizza",
      fdImgPath: 'assets/pizzaicon.jpg',
    ),
    const Foods(
      fdName: "Cake",
      fdImgPath: 'assets/cakeicon.jpg',
    ),
  ];

  int index = 0;
  final bottomScreen = [
    Home(),
    const Favorites(),
    const Account(),
    const More(),
  ];

  int selected = 0;
  int selectedInedx = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
              const SizedBox(height: 20,),
              

              Container(
                margin:const EdgeInsets.fromLTRB(10, 10, 0, 0),
                height: 200,
                child: ListView.builder(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                   // padding: EdgeInsets.all(10),
                    itemCount: foods.length,
                    itemBuilder: (context, index) {
                      final food = foods[index];
                      //SizedBox(width: 20,);
                      return InkWell(
                        onTap: (){
                          setState(() {
                            selectedInedx = index;
                          });
                          if(selectedInedx%3==0){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BurgerItem()));
                          }
                          else if(selectedInedx%3==1){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PizzaItem()));
                          }
                          else if(selectedInedx%3==2){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CakeItem()));
                          }
                        },
                        child: FoodName(
                          item: food.fdName,
                          img: food.fdImgPath,
                          itemIndex: index,
                          selectedIndex: selectedInedx,
                        ),

                      );
                    }),
              ),

              const Row(
                children: [
                  SizedBox(width: 10,),
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
                  SizedBox(width: 10,),
                ],
              ),

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
              const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
        ),
        child: NavigationBar(
          height: 75,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(
            () => this.index = index,
          ),
          animationDuration: const Duration(seconds: 2),
          destinations: [
            const NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: "Home"),
            const NavigationDestination(
                icon: Icon(Icons.favorite_outline_sharp),
                selectedIcon: Icon(Icons.favorite),
                label: "Favorites"),
            const NavigationDestination(
                icon: Icon(Icons.account_box_outlined),
                selectedIcon: Icon(Icons.account_box),
                label: "Account"),
            const NavigationDestination(
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

class Foods {
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
