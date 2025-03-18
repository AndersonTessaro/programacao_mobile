import 'package:flutter/material.dart';
import 'tela_dois.dart';

class TelaUm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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


          const Text(
            "Escolha do APP (Aleatório):",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Image.asset('assets/imagens/padrao.png', height: 100),

          const SizedBox(height: 20),

          const Text(
            "Escolha do Usuário:",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TelaDois("pedra"),
                    ),
                  );
                },
                child: Image.asset('assets/imagens/pedra.png', height: 70),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TelaDois("papel"),
                    ),
                  );
                },
                child: Image.asset('assets/imagens/papel.png', height: 70),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TelaDois("tesoura"),
                    ),
                  );
                },
                child: Image.asset('assets/imagens/tesoura.png', height: 70),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
