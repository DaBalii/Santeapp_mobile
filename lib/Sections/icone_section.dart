import 'package:flutter/material.dart';

class IconSection extends StatelessWidget {
  const IconSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.all(30),
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 0.1),
        borderRadius: BorderRadius.circular(70),
      ),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.cyanAccent.withOpacity(0.2),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 18,
                offset: const Offset(0, 3),
              )
            ],
          ),
          padding: const EdgeInsets.all(20),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage('images/medo.jpg'),
                      fit: BoxFit.cover
                  ),
                ),
              )
          )
      ),
    );
  }
}