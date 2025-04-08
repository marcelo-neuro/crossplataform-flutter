import 'package:flutter/material.dart';

class PizzaMenu extends StatelessWidget {
  const PizzaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pizza Menu')),
      body: const Column(
        children: [
          Card(
            child: Row(
              children: [
                Image.asset(),
              ],
            ),
          )
        ],
      ),
    );
  }
}