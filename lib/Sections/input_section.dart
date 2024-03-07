import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/accueilPage.dart';
import '../Screens/register.dart';

class InputSect extends StatefulWidget {
  const InputSect({super.key});

  @override
  State<InputSect> createState() => _InputSectState();
}

class _InputSectState extends State<InputSect> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.1),
              border: Border.all(
                color: Colors.white30,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    Icons.people_outline,
                    size: 30,
                    color: Colors.blue.shade900,
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: emailController,
                    style: GoogleFonts.comfortaa(
                        fontSize: 20, color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                    obscureText: false,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: GoogleFonts.comfortaa(
                          color: Colors.white70,
                        ),
                        border: InputBorder.none
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.1),
              border: Border.all(
                color: Colors.white30,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    Icons.lock_outline,
                    size: 30,
                    color: Colors.blue.shade900,
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: passwordController,
                    style: GoogleFonts.comfortaa(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      hintText: 'Mots de passe',
                      hintStyle: GoogleFonts.comfortaa(
                        color: Colors.white70,
                      ),
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscureText ? Icons.visibility : Icons.visibility_off,
                          color: Colors.white70,
                        ),
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.all(30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>accueilPage()));
                  sendDataToApi();
                },
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
          )

        ],),
    );
  }

  void sendDataToApi() {
    String email = emailController.text;
    String password = passwordController.text;
    print(email);

  }
}




