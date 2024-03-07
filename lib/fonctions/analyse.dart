import 'package:flutter/material.dart';
class analyseFon extends StatefulWidget {
  const analyseFon({super.key});

  @override
  State<analyseFon> createState() => _analyseFonState();
}

class _analyseFonState extends State<analyseFon> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('analyse'),
        backgroundColor: Colors.teal,

      ),
    );
  }
}
