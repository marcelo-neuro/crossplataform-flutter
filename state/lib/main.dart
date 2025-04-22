import 'package:flutter/material.dart';

void main() => runApp(VotacaoApp());

class VotacaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: VotacaoPage());
  }
}

class VotacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simulador de Votação")),
      body: null,
    );
  }
}

class Votacao extends StatefulWidget {
  const Votacao({super.key});

  @override
  State<Votacao> createState() => _VotacaoState();
}

class _VotacaoState extends State<Votacao> {
  String _vencedor = "";
  int _contCachorro = 0;
  int _contGato = 0;

  void _incrementarGato() {
    setState(() {
      _contGato++;
    });
  }

  void _incrementarCachorro() {
    setState(() {
      _contCachorro++;
    });
  }

  void 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '🐱 Gatos: 0   🐶 Cachorros: 0',
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(height: 16),
          Text(
            "Resultado",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Votar em Gatos")),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {},
                child: Text("Votar em Cachorros"),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
            child: Text("Resetar"),
          ),
        ],
      ),
    );
  }
}
