import 'package:flutter/material.dart';
import 'package:listas/contato.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Basic List';
    final contatos = <Contato>[
      Contato(nome: "Felipe Kinder Man", email: "kinderman@gmeio.com"),
      Contato(nome: "Derick Games", email: "gdericksi8@gmeio.com"),
      Contato(nome: "Nicolino Arponino", email: "arpon@gmeio.com"),
      Contato(nome: "Edu Éduro", email: "ehduro@gmeio.com"),
      Contato(nome: "Eu da silva", email: "fadojoshgordogiganteexplosivo@gmeio.com"),
    ];

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: contatos.length,
          itemBuilder: (_, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  contatos[index].nome[0],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                contatos[index].nome,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                contatos[index].email
              ),
            );
          },
        )
      ),
    );
  }
}