import 'package:flutter/material.dart';
import 'dart:math';

class TelaDois extends StatelessWidget {
  final String escolhaUsuario;

  TelaDois(this.escolhaUsuario, {super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> opcoes = ["pedra", "papel", "tesoura"];

    final String escolhaApp = opcoes[Random().nextInt(opcoes.length)];


    String caminhoImagem(String escolha) {
      switch (escolha) {
        case "pedra":
          return "assets/imagens/pedra.png";
        case "papel":
          return "assets/imagens/papel.png";
        case "tesoura":
          return "assets/imagens/tesoura.png";
        default:
          return "assets/imagens/padrao.png";
      }
    }

    String resultado;
    if (escolhaUsuario == escolhaApp) {
      resultado = "Empate!";
    } else if ((escolhaUsuario == "pedra" && escolhaApp == "tesoura") ||
        (escolhaUsuario == "papel" && escolhaApp == "pedra") ||
        (escolhaUsuario == "tesoura" && escolhaApp == "papel")) {
      resultado = "Você Venceu!";
    } else {
      resultado = "Você Perdeu!";
    }

    return Scaffold(
      body: Column(
        children: [

          Container(
            width: double.infinity,
            color: Colors.red,
            padding: const EdgeInsets.all(16),
            child: const Center(
              child: Text(
                "Pedra, Papel, Tesoura",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Escolha do APP
          const Text(
            "Escolha do APP:",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Image.asset(caminhoImagem(escolhaApp), height: 100),

          const SizedBox(height: 20),

          const Text(
            "Sua Escolha:",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Image.asset(caminhoImagem(escolhaUsuario), height: 100),

          const SizedBox(height: 20),


          Text(
            resultado,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Image.asset(
            resultado == "Você Venceu!"
                ? "assets/imagens/vitoria.png"
                : "assets/imagens/icons8-perder-48.png",
            height: 100,
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            child: const Text(
              "Jogar Novamente",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
