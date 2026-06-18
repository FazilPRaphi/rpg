import 'package:flutter/material.dart';
import 'package:rpg/screens/create/create.dart';
import 'package:rpg/screens/home/home.dart';
import 'package:rpg/theme.dart';

void main() {
  runApp( MaterialApp(
    theme: primaryTheme,
    home: Home()));
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SandBox"),
        backgroundColor: Colors.grey[300],
        foregroundColor: Colors.blueAccent,
      ),
      body:Container(
        padding: EdgeInsets.all(20),
        color: Colors.amber,
        child: Text("Hello Nyan"),
      )
    );
  }
}
