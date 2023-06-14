import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:restotaff/covoiturage/Espace-covoiturage/Espace%20passager/paiement/payement-covoiturage.dart';


class payement1 extends StatefulWidget {
  var depart, arrivee, heure, nom, tel, uid;
  payement1({required this.depart, required this.arrivee, required this.heure, required this.nom, required this.tel , required this.uid});

  @override
  State<payement1> createState() => _payement1State();
}
TextEditingController _tel = TextEditingController();
class _payement1State extends State<payement1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tel.text = widget.tel;

  }

  void Snackbar (String message){
    final snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  @override
  Widget build(BuildContext context) {

    CollectionReference users = FirebaseFirestore.instance.collection('trajet_utilisateur');

    Future<void> ajouter() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
        'nom_passager': widget.nom, // John Doe
        'tel': widget.tel,
        'arrivee': widget.arrivee,
        'depart': widget.depart,
        'tels_trasaction':_tel.text,// Stokes and Sons
        'uid_conducteur': widget.uid // 42
      })
          .then((value) => Snackbar("Demande envoyee"))
          .catchError((error) => Snackbar("Failed to add user: $error"));
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                IconButton(onPressed: (){
                 // Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => payement()));

                }, icon: Icon(Icons.arrow_back,size: 30),),
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 80),
              child: Container(
                child: Image(image: AssetImage('asset/Carte.png'),),
              ),
            ),
            SizedBox(height: 80,),
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffe6e6e6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 80,),
                  Row(
                    children: [
                      SizedBox(width: 40,),
                      Container(
                          width: 400,
                          child: TextFormField(
                            controller: _tel,
                            cursorColor: Color(0xffb80000),
                            decoration: InputDecoration(
                                hintText: "Entrer votre numero",
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Color(0xffb80000),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Color(0xffb80000),
                                  width: 2.0,
                                ),
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 60,
                    width: 400,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      primary: Color(0xffb80000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),onPressed: (){
                      ajouter();
                    }, child: Text("Confirmer",style: TextStyle(fontSize: 20))),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 60,
                    width: 400,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      primary: Color(0xffb80000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),onPressed: (){
                      //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => payement()));

                    }, child: Text("Annuler",style: TextStyle(fontSize: 20))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
