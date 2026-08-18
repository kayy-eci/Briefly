import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      backgroundColor: Colors.blue[50],
      body: const Center(
        child: Text("Halaman Home"),
      ),
    );
  }
}
