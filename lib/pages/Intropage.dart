import 'package:flutter/material.dart';
import 'package:grocery_shop_app/pages/Hompage.dart';
import 'package:lottie/lottie.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Row(
            children: [
              Lottie.asset('assets/delivry.json',width: 400,height: 400,alignment: Alignment.center),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "We Deliver Groceries At Your DoorStep",textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.black,),
            ),
          ),
          const SizedBox(height: 50,),
          Text("Fresh items everyday",style: TextStyle(color: Colors.grey[800]),
          ),
          const Spacer(),
          GestureDetector(
            onTap: ()=>{
              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) {
                return Homepage();
              } ,))
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24),
              child: const Text("Get Started",style: TextStyle(color: Colors.white),),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
