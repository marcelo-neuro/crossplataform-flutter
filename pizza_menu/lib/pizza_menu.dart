import 'package:flutter/material.dart';
import 'package:pizza_menu/menu_item.dart';
import 'package:pizza_menu/pizza_data.dart';

class PizzaMenu extends StatelessWidget {
  const PizzaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pizza Menu')),
      body:  Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: 
                  pizzaData.map((p) {
                    return MenuItem(pizza: p,);
                  }).toList()
                 ,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton( 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow
            ),
            onPressed: () {},
            child: const Text("Order Now")),
          )
        ],
      ),
    );
  }
}
