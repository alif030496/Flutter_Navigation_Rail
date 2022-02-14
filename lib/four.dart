import 'package:flutter/material.dart';

class Four extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Text(
          "Flight Mode",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
