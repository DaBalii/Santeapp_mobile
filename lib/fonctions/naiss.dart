import 'package:flutter/material.dart';
class naissFon extends StatefulWidget {
  const naissFon({super.key});

  @override
  State<naissFon> createState() => _naissFonState();
}

class _naissFonState extends State<naissFon> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Accouchement'),
        backgroundColor: Colors.teal,

      ),
    );
  }
}
