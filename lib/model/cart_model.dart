import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartModel extends ChangeNotifier{

 final List _shopItems=[
   ["chiken","57.50","assets/images (3).png",Colors.red],
   ["orange","20.80","assets/images (2).png",Colors.orange],
   ["avocado","13.20","assets/images (1).png",Colors.green],
   ["banana","19.75","assets/images.png",Colors.yellow],
 ];
  List _cartItems=[];

 get shopItems => _shopItems;
 get cartItems => _cartItems;

 void addiTemToCart(int index){
   _cartItems.add(_shopItems[index]);
   notifyListeners();
 }

 void removeItemCart(int index){
   _cartItems.removeAt(index);
   notifyListeners();
 }

 String calculateTotal(){
   double totalprice=0;
   for(int i=0; i<_cartItems.length; i++){
     totalprice+= double.parse(_cartItems[i][1]);
   }
   return totalprice.toStringAsFixed(2);
 }








}