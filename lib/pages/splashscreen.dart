import 'dart:async';
import 'package:food_app/Onboarding%20Screen/onboard_screen.dart';
import 'package:food_app/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoardScreen())); /// pushremove until
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      body: Center(
        child: Container(
          color: Colors.greenAccent[100],
          padding: EdgeInsets.all(50),
          height: 900,
          width: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                width: 250,
                child: Image.asset('assets/logo2.jpg'),
              ),
              SizedBox(height: 30,),
              SizedBox(
                height: 80,
                width: 280,
                child: Stack(
                  children: [
                    Container(
                      height: 80,
                      width: 280,

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.brown,
                          width: 3,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60,
                      width: 260,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("VOJONPRIO",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.greenAccent[100]
                            ),
                          ),
                          Icon(Icons.favorite_border_outlined, color: Colors.greenAccent[100],size:40),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
