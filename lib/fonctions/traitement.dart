import 'package:flutter/material.dart';
class traitFon extends StatefulWidget {
  const traitFon({super.key});

  @override
  State<traitFon> createState() => _traitFonState();
}

class _traitFonState extends State<traitFon> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('traitement'),
        backgroundColor: Colors.teal,

      ),
    );
  }
}
