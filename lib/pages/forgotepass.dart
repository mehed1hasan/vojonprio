import 'package:food_app/singleitem/burger.dart';
import 'package:food_app/widgets/bottomnav.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Column(
            children: [

              const Text("Forgot Password",
                style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w600),),

              const SizedBox(height: 160,),

              Container(
                height: 55,
                width: 375,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    labelText: "Phone No",
                    hintText: "Enter your phone number..",
                    //border: OutlineInputBorder(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 60,),

              SizedBox(
                width: 343,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: (){},
                  child: const Text("Reset Password", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: 343,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Burger()));
                  },
                  child: const Text("Login", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
