import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    // TIDAK pakai Scaffold lagi, karena sudah ada di MainNavigation.
    // Jika pakai Scaffold di sini, BottomBar jadi tertutup / tidak konsisten.
    return Container(
      color: Colors.blue[50],
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Image.asset("assets/images/ChessGame.png", width: 350),
            const SizedBox(height: 20),
            Image.asset("assets/images/NaturaDrops.png", width: 350),
            const SizedBox(height: 20),
            Image.asset("assets/images/Rebites.png", width: 350),
          ],
        ),
      ),
    );
  }
}
