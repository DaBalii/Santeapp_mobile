import 'package:flutter/material.dart';

class BoutonSection extends StatelessWidget {
  const BoutonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(30),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.lightBlue.shade900,
              minimumSize: const Size(800, 60),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              )
          ),
          child: const Text("Connexion",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
        )
    );
  }
}


