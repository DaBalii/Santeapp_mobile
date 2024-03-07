import 'package:flutter/material.dart';

import '../Sections/titleRegis.dart';
import '../fonctions/analyse.dart';
import '../fonctions/consultation.dart';
import '../fonctions/naiss.dart';
import '../fonctions/operation.dart';
import '../fonctions/suivi.dart';
import '../fonctions/traitement.dart';


class accueilPage extends StatefulWidget {
  const accueilPage({super.key});

  @override
  State<accueilPage> createState() => _accueilPageState();
}

class _accueilPageState extends State<accueilPage> {
  final TextEditingController reachController = TextEditingController();
  List<String> options=["visite","assité","opération"];
  List<Options> Activite=[
    new Options("consultation", Icons.local_hospital,consultFon()),
    new Options("suivi", Icons.timeline,suivifon()),
    new Options("Traitement", Icons.medical_services,traitFon()),
    new Options("analyse", Icons.leaderboard,analyseFon()),
    new Options("Operation", Icons.add_circle_outline,operatioFon()),
    new Options("Accouchement", Icons.pregnant_woman,naissFon()),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(),
      drawer: new Drawer(
        child: Container(
          color: Colors.blue,
          child: ListView.builder(
            itemCount: options.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return UserAccountsDrawerHeader(
                  accountName: Text("Nom de l'utilisateur"),
                  accountEmail: Text("example@example.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("images/medo.jpg"),
                  ),
                  decoration: BoxDecoration(color: Colors.blue,),
                );
              } else {
                return ListTile(
                  onTap: () {print('Option sélectionnée : ${options[index - 1]}');},
                  title: Text(options[index - 1], textAlign: TextAlign.start, style: TextStyle(color: Colors.white),),
                );
              }
            },
          ),
        ),
      ),
        body:Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade200, Colors.blue.shade400, Colors.blue.shade600, Colors.blue.shade900],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            titleRegis(),
            Container(
              width: MediaQuery.of(context).size.width/1.2,
              child: SearchBar(
                leading: IconButton(
                    onPressed:(){}, icon: Icon(Icons.search)),
                hintText: 'recherche',
                controller:reachController,
              ),
            ),
            Container(
              height:MediaQuery.of(context).size.height/2,
              width:MediaQuery.of(context).size.width,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemCount: Activite.length,
                  itemBuilder: (context,i){
                    return new Container(
                      margin: EdgeInsets.all(7.5),
                      child: new Card(
                        elevation: 10,
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(Activite[i].nom,style: TextStyle(color: Colors.red,fontSize:15.0 ),),
                            new IconButton(
                                onPressed:(){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                      builder: (context) => Activite[i].page,
                                      ) );
                                },
                                icon:Icon(Activite[i].icone,color: Colors.teal,size: 30.0,) )
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      )
    );
  }
}

class Options {
  late String nom;
  late IconData icone;
  late Widget page;

  Options(this.nom, this.icone, this.page);
}
