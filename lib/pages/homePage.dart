import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  
  final String nama;
  final int umur;

  const Homepage({super.key, required this.nama, required this.umur});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Nama saya $nama"),
          Text("Umur saya $umur tahun"),
          Text("Aeri uchinaga is my bini"),
        ],
      ),
    );
  }
}