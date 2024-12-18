import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget{
  final String itemName;
  final String itemPrice;
  final String itemPath;
  final color;
  void Function()? onPressed;

  GroceryItemTile({super.key,required this.itemName,required this.itemPrice,required this.itemPath, required this.color,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(8),
        height: 250,
        width: 250,
        decoration: BoxDecoration(color: color[100],
          borderRadius: BorderRadius.circular(10)
        ),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(itemPath,height: 120,width: 120,),
              Text(itemName,textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              MaterialButton(onPressed: onPressed,color: color[800],child:Text(itemPrice,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),)
            ],
          ),
      ),
    );
  }

}