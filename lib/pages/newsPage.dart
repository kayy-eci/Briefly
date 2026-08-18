import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("News")),
      backgroundColor: Colors.green[50],
      body: const Center(
        child: Text("Halaman News"),
      ),
    );
  }
}
