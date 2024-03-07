import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/register.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            style: GoogleFonts.exo(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            children: const [
              TextSpan(
                text: "SanteApp ",
              ),
              TextSpan(
                text: "Login",
                style: TextStyle(
                  color: Colors.cyanAccent,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => register_page()));
            },
            child: RichText(
              text: TextSpan(
                style: GoogleFonts.abhayaLibre(
                  fontSize: 25,
                  color: Colors.black,
                ),
                text: "Enregistrez-vous ici !!",
              ),
            ),
          ),
        )

      ],
    );
  }
}