import 'package:flutter/material.dart';

import '../Sections/bouton_section.dart';
import '../Sections/icone_section.dart';
import '../Sections/input_section.dart';
import '../Sections/title_section.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade200, Colors.blue.shade400, Colors.blue.shade600, Colors.blue.shade900],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
        ),
        child: Column( // Retrait du mot-clé const
          children: [
            IconSection(),
            SizedBox(height: 20),
            TitleSection(),
            SizedBox(height: 20),
            InputSect(key: ValueKey('inputSectionKey')), // Correction ici
          ],
        ),
      ),
    );
  }

}
