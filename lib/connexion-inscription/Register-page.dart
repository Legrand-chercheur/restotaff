import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import '../acceuil2.dart';
import 'login-page.dart';

class acceuill2 extends StatefulWidget {
  const acceuill2({Key? key}) : super(key: key);

  @override
  State<acceuill2> createState() => _acceuill2State();
}

class _acceuill2State extends State<acceuill2> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nom = TextEditingController();
  TextEditingController _prenom = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _mdp = TextEditingController();

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
                        height: 80,
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.85,
                        child: TextFormField(
                          controller: _nom,
                          decoration: InputDecoration(

                            labelText: 'Entrer votre nom',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
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
                          controller: _prenom,
                          decoration: InputDecoration(
                            labelText: 'Entrer votre prenom',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(color: Colors.white),
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
                          controller: _email,
                          decoration: InputDecoration(
                            labelText: 'Entrer votre email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
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
                              borderRadius: BorderRadius.circular(20.0),

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
                      SizedBox(height: 46.0),
                      Container(
                          height: 70,

                          child: FractionallySizedBox(
                            widthFactor: 0.85,
                            child: ElevatedButton(
                              onPressed: () async{
                                if(_nom.text.isEmpty || _prenom.text.isEmpty || _email.text.isEmpty || _mdp.text.isEmpty){
                                  Snackbar("Remplir tout les champs");
                                }else{
                                  try {
                                    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                      email: _email.value.text,
                                      password: _mdp.value.text,
                                    );
                                    try {
                                      final user = FirebaseAuth.instance.currentUser;
                                      if (user != null) {
                                        final uid = user.uid;
                                        FirebaseFirestore.instance
                                            .collection('utilisateur')
                                            .doc(uid)
                                            .set({
                                          'Nom': _nom.value.text, // John Doe
                                          'Prenom': _prenom.value.text, // Stokes and Sons
                                          'Email': _email.value.text, // 42
                                          'id':uid
                                        })
                                            .then((value) => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>acceuil2()), (route) => false))
                                            .catchError((error) => Snackbar("Inscription non reussite"));
                                      }

                                    } on FirebaseFirestore catch (e) {
                                      print(e);
                                    }

                                  } on FirebaseAuthException catch (e) {
                                    if (e.code == 'weak-password') {
                                      Snackbar("Le mots de passe est faible");
                                      print('The password provided is too weak.');
                                    } else if (e.code == 'email-already-in-use') {
                                      Snackbar("Un compte exciste déjà avec cette email.");
                                      print('Un ecompte exciste déjà avec cette email.');
                                    }
                                  } catch (e) {
                                    print(e);
                                  }
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Text('Inscription',style: TextStyle(fontSize: 20)),
                            ),
                          )
                      ),
                      SizedBox(height: 60,),
                      Row(
                        children: [
                          SizedBox(width: 80,),
                          Text("Deja un compte?",style: TextStyle(fontSize: 20),),
                          GestureDetector(onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => acceuil1()));

                          },child: Text("Connectez-vous",style: TextStyle(fontSize: 20,color: Colors.blue),)),
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
