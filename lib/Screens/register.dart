import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'authentification.dart';
class register_page extends StatefulWidget {
  const register_page({super.key});

  @override
  State<register_page> createState() => _register_pageState();
}

class _register_pageState extends State<register_page> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordControllerConf = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  bool obscureText = true;
  bool obscureTexts = true;

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade200, Colors.blue.shade400, Colors.blue.shade600, Colors.blue.shade900],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,// Retrait du mot-clé const
            children: [


                Container(
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
              ),


              Container(
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
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: GoogleFonts.comfortaa(
                                  color: Colors.white70,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
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
                                    controller: nameController,
                                    style: GoogleFonts.comfortaa(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Nom',
                                      hintStyle: GoogleFonts.comfortaa(
                                        color: Colors.white70,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                    Container(
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
                                    obscureText: obscureTexts,
                                    decoration: InputDecoration(
                                      hintText: 'mot de passe',
                                      hintStyle: GoogleFonts.comfortaa(
                                        color: Colors.white70,
                                      ),
                                      border: InputBorder.none,
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          obscureTexts ? Icons.visibility : Icons.visibility_off,
                                          color: Colors.white70,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            obscureTexts = !obscureTexts;
                                          });
                                        },
                                      )
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
                                    controller: passwordControllerConf,
                                    style: GoogleFonts.comfortaa(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    obscureText: obscureText,
                                    decoration: InputDecoration(
                                      hintText: 'confirmation',
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
                                      )
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                                  sendDataApp();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.lightBlue.shade900,
                                  minimumSize: const Size(800, 60),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child: const Text(
                                  "Enregistrez",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ]
        )
      )
    ])
    )));

  }
  void sendDataApp(){
    String email =  emailController.text ;
    String password =  passwordController.text;
    String pass_conf = passwordControllerConf.text;
    String  name = nameController.text;

    print(name);

  }
}
