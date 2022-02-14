// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navigation_rail/five.dart';
import 'package:navigation_rail/four.dart';
import 'package:navigation_rail/one.dart';
import 'package:navigation_rail/six.dart';
import 'package:navigation_rail/three.dart';
import 'package:navigation_rail/two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedindex = 0;
  final pages=[
    One(),Two(),Three(),Four(),Five(),Six()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

            appBar: AppBar(
              title: Text("Navigation Rail"),
              centerTitle: true,
            ),
            body: Row(
              children: [
                NavigationRail(
                  backgroundColor: Colors.lightGreenAccent,
                  labelType: NavigationRailLabelType.all,
                  destinations: [
                  NavigationRailDestination(
                      icon: Icon(
                        Icons.wifi,
                        color: Colors.white,
                      ),
                      label: Text("Wifi"),
                      selectedIcon: Icon(
                        Icons.wifi,
                        color: Colors.blue,
                      )),
                  NavigationRailDestination(
                      icon: Icon(
                        Icons.wb_sunny,
                        color: Colors.white,
                      ),
                      label: Text("Sunny"),
                      selectedIcon: Icon(
                        Icons.wb_sunny,
                        color: Colors.blue,
                      )),
                  NavigationRailDestination(
                      icon: Icon(
                        Icons.bluetooth,
                        color: Colors.white,
                      ),
                      label: Text("Bluetooth"),
                      selectedIcon: Icon(
                        Icons.bluetooth,
                        color: Colors.blue,
                      )),
                  NavigationRailDestination(
                      icon: Icon(
                        Icons.flight,
                        color: Colors.white,
                      ),
                      label: Text("Flight Mode"),
                      selectedIcon: Icon(
                        Icons.flight,
                        color: Colors.blue,
                      )),
                  NavigationRailDestination(
                      icon: Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                      label: Text("Messages"),
                      selectedIcon: Icon(
                        Icons.message,
                        color: Colors.blue,
                      )),
                  NavigationRailDestination(
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                      label: Text("Camera"),
                      selectedIcon: Icon(
                        Icons.camera_alt,
                        color: Colors.blue,
                      )),
                ], selectedIndex: selectedindex,
                onDestinationSelected: (val){
                  setState(() {
                    selectedindex=val;
                  });
                },),
                Expanded(child: Container(
                  child: pages[selectedindex],
                ))
              ],
            )));
  }
}
