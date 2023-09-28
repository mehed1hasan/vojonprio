import 'package:flutter/material.dart';

class Rate extends StatefulWidget {
  Rate(this.img,{super.key});
  String img;
  @override
  State<Rate> createState() => _RateState();
}

class _RateState extends State<Rate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 130,),
            Text("Rate your service",
              style: TextStyle(fontWeight:FontWeight.w700, fontSize:24, ),
            ),

            SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.thumb_down_alt_outlined,),
                SizedBox(width: 55,),

                Container(
                  width: 110,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    //color: Colors.green.shade400,
                  ),
                  child: Image.asset(widget.img, fit: BoxFit.fill,),
                ),

                SizedBox(width: 55,),
                Icon(Icons.thumb_up_outlined,color: Colors.red,),

              ],
            ),


/// Second part

            SizedBox(height: 130,),
            Text("How was your delivery?",
              style: TextStyle(fontWeight:FontWeight.w700, fontSize:24, ),
            ),

            SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.thumb_down_alt_outlined,),
                SizedBox(width: 20,),

                Container(
                  width: 190,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    ///color: Colors.green,
                  ),
                  child: CircleAvatar(
                    ///radius: Radius.circular(30),
                    radius: 40,
                    backgroundImage:
                    NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRytbwiC7K7lQdEj5KGGgbiWEYgXlUMtgoK5Q&usqp=CAU'),
                  ),
                ),

                SizedBox(width: 20,),
                Icon(Icons.thumb_up_alt_outlined,color: Colors.red,),

              ],
            ),


          ],
        ),
      ),
    );
  }
}
