import 'package:flutter/material.dart';
class operatioFon extends StatefulWidget {
  const operatioFon({super.key});

  @override
  State<operatioFon> createState() => _operatioFonState();
}

class _operatioFonState extends State<operatioFon> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('operation'),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
