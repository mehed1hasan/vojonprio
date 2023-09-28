import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  @override
  int number=0;
  Widget build(BuildContext context) {
    return Container(
        width: 120,
        height: 50,
        //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        //color: Colors.white,
        child: Row(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  number--;
                });
              },
              child: Container(
                height: 40, width: 40,
                decoration: BoxDecoration(
                    //color: Colors.brown,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Icon(Icons.remove, color: Colors.red,),
              ),
            ),
            Spacer(),

            Text("$number",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),

            Spacer(),

            GestureDetector(
              onTap: (){
                setState(() {
                  number++;
                });
              },
              child: Container(
                height: 40, width: 40,
                decoration: BoxDecoration(
                   // color: Colors.brown,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Icon(Icons.add,color: Colors.red,),
              ),
            ),

          ],
        )

    );
  }
}
