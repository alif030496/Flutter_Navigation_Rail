// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(

        child: Text("Wifi",style: TextStyle(color: Colors.white,fontSize: 24),),
      ),
    );
  }
}
