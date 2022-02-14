import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Text("Sunny",style: TextStyle(color: Colors.white,fontSize: 24),),
      ),
    );
  }
}
