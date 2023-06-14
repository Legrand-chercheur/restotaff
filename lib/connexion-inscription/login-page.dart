import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:restotaff/Restaurant/Resto0.dart';
import 'package:restotaff/acceuil2.dart';


import 'Register-page.dart';

class acceuil1 extends StatefulWidget {
  const acceuil1({Key? key}) : super(key: key);

  @override
  State<acceuil1> createState() => _acceuil1State();
}

class _acceuil1State extends State<acceuil1> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _mdp = TextEditingController();

  final user = FirebaseAuth.instance.currentUser;
  var uid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color(0xffe6e6e6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Text("App-Name",style: TextStyle(fontSize: 30),),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child:Text("Message de securité",style: TextStyle(fontSize: 20)),
                      ),
                      SizedBox(
                        height: 160,
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.85,
                        child: TextFormField(
                          controller: _email,
                          decoration: InputDecoration(
                            labelText: 'Entrer votre nom',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            fillColor: Colors.white, // définir la couleur de fond
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.85,
                        child: TextFormField(
                          controller: _mdp,
                          decoration: InputDecoration(
                            labelText: 'Mot de passe',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            fillColor: Colors.white, // définir la couleur de fond
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          SizedBox(width: 290,),
                          GestureDetector(
                            onTap: (){},
                            child:Text("Mot de passe oublié"),
                          )
                        ],
                      ),
                      SizedBox(height: 46.0),
                      Container(
                        height: 70,

                        child: FractionallySizedBox(
                          widthFactor: 0.85,
                          child: ElevatedButton(
                            onPressed: () async{
                              print(_email.text +" "+ _mdp.text);
                              if(_email.text.isEmpty || _mdp.text.isEmpty){
                                Snackbar("Remplir tout les champs");
                              }else{
                                try {
                                  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                                      email: _email.value.text,
                                      password: _mdp.value.text
                                  );
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'user-not-found') {
                                    Snackbar('Aucun email correspondant.');
                                  } else if (e.code == 'wrong-password') {
                                    Snackbar('Mot de passe faible');
                                  }
                                  if(user!=null){
                                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>acceuil2()), (route) => false);
                                  }
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text('Se connecter',style: TextStyle(fontSize: 20)),
                          ),
                        )
                      ),
                      SizedBox(height: 60,),
                      Row(
                        children: [
                          SizedBox(width: 80,),
                          Text("Pas encore inscrit?",style: TextStyle(fontSize: 20),),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => acceuill2()));

                            },
                            child: Text("Inscrivez-vous",style: TextStyle(fontSize: 20,color: Colors.blue),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void Snackbar (String message){
    final snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
