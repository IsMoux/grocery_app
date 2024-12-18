import 'package:flutter/material.dart';
import 'package:grocery_shop_app/model/cart_model.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Cart",
            textAlign: TextAlign.start,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Consumer<CartModel>(
          builder: (context, value, child) {
            return Column(
              children: [
                Expanded(
                    child: ListView.builder(
                  itemCount: value.cartItems.length,
                  padding: const EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                    return Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: ListTile(
                            leading: Image.asset(
                              value.cartItems[index][2],
                              height: 50,
                            ),
                            subtitle: Text(value.cartItems[index][1]+"DA"),
                            trailing: IconButton(onPressed: (){
                              Provider.of<CartModel>(context,listen: false).removeItemCart(index);
                            },icon: const Icon(Icons.cancel,color: Colors.red,),),
                            title: Text(value.cartItems[index][0])));
                  },
                )
                ),
                Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Container(
                    decoration:  BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding:const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total Price",style: TextStyle(color: Colors.green[100]),),
                            const SizedBox(height: 5,),
                            Text(value.calculateTotal(),style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green.shade100),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Row(
                            children: [
                              Text("Pay Now",style: TextStyle(color: Colors.white),),
                              Icon(Icons.arrow_forward_ios,size: 16,color: Colors.white,)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                ),
              ],
            );
          },
        ));
  }
}
