import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      backgroundColor: Colors.purple[50],
      body: const Center(
        child: Text("Halaman Profile"),
      ),
    );
  }
}
