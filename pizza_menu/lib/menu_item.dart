import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.imagem, required this.titulo, required this.desc, required this.preco});

  final String imagem;
  final String titulo;
  final String desc;
  final String preco;



  @override
  Widget build(BuildContext context) {
    return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    imagem,
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Focaccia',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        SizedBox(height: 6,),
                        Text(
                          'Bread with italian olive oil and rosemary.',
                          style: TextStyle(fontSize: 16, color: Colors.black87),
                        ),
                        SizedBox(height: 6,),
                        Text(
                          '\$12',
                          style: TextStyle(color: Colors.black45),
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