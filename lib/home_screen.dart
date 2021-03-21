import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id="home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home screen"),),
      body: Center(
        child: Column(
          children: [
            Text("This is home Screen")
          ],
        ),
      ),
    );
  }
}
