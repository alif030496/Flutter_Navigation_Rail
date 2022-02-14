import 'package:flutter/material.dart';

class Three extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Text(
          "Bluetooth",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
