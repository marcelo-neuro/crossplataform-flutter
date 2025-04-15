import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pizza_menu/pizza_data.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.pizza});

  final Pizza pizza;

  @override
  Widget build(BuildContext context) {
    return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ColorFiltered(
                    colorFilter: pizza.soldOut ? 
                      const ColorFilter.mode(Colors.grey, BlendMode.saturation) : 
                      const ColorFilter.mode(Colors.transparent, BlendMode.multiply),
                    child: Image.asset(
                      pizza.photoPath,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(pizza.name,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        const SizedBox(height: 6,),
                        Text(
                          pizza.ingredients,
                          style: const TextStyle(fontSize: 16, color: Colors.black87),
                        ),
                        const SizedBox(height: 6,),
                        Text(
                          pizza.soldOut ? "Sold out" : "\$${pizza.price}",
                          style: const TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
  }
}