import 'package:flutter/material.dart';
import 'package:food_app/pages/login.dart';

import '../pages/signup.dart';


class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override

  int currentIndex = 0;
  PageController? _controller;


  void initState(){
    _controller = PageController(initialPage: 0);
    super.initState();
  }


  void dispose(){
    _controller?.dispose();
    super.dispose();
  }

  List<Content> contents = [

    const Content(
      image: 'assets/foodOrder.jpg',
      title: "Online Order",
      discription: "We provide very quality full and fresh food."
          "You can order in online easily from home."
          "You can order your favorite at home.",
    ),
    const Content(
      image: 'assets/foodQuality.jpg',
      title: "Quality Product",
      discription: "We provide very quality full and fresh food."
          "You can order in online easily from home."
    ),
    const Content(
      image: 'assets/foodPayment.jpg',
      title: "Easy Payment",
      discription: "We provide very quality full and fresh food."
          "You can order in online easily from home."
          "Our payment process is very easy.",
    ),
    const Content(
      image: 'assets/foodDelivery.jpg',
      title: "Fast Delivery",
      discription: "We provide very quality full and fresh food."
          "You can order in online easily from home."
          "Our delivery process is fist.",
    )
  ];


  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index){
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Image.asset(contents[index].image,height: 280, width: 300,fit: BoxFit.fill,),
                        SizedBox(height: 20,),
                        Text(
                          contents[index].title,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Text(
                          contents[index].discription,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),


            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    contents.length,
                        (index) => buildDot(index, context)
                ),
              ),
            ),



            Container(
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                child: Text(currentIndex==contents.length-1 ? "Let's Start": "Next",
                  style: const TextStyle(
                      color: Colors.white
                  ),
                ),
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  }
                  _controller?.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },

              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context){
    return Container (
      height: 10,
      width: currentIndex==index ? 25: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //color: Colors.blue
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

class Content{
  final String image;
  final String title;
  final String discription;
  const Content({
    required this.image,
    required this.title,
    required this.discription,
  });
}