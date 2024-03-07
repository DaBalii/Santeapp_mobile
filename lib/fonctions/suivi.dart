import 'package:flutter/material.dart';
class suivifon extends StatefulWidget {
  const suivifon({super.key});

  @override
  State<suivifon> createState() => _suivifonState();
}

class _suivifonState extends State<suivifon> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('suivi'),
        backgroundColor: Colors.teal,

      ),
    );
  }
}
