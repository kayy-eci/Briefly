import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search")),
      backgroundColor: Colors.yellow[50],
      body: const Center(
        child: Text("Halaman Search"),
      ),
    );
  }
}
