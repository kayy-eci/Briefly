import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notification")),
      backgroundColor: Colors.orange[50],
      body: const Center(
        child: Text("Halaman Notification"),
      ),
    );
  }
}
