import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Text(
          "Time Line",
          style: TextStyle(color: Colors.redAccent , fontSize: 29),
        ),
      ),
    );
  }
}