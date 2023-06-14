import 'package:flutter/material.dart';

import '../paiement/payement-covoiturage.dart';

class detailtrajet extends StatefulWidget {
  var heure, arrive, depart, uid;
  detailtrajet({required this.heure, required this.arrive, required this.depart, required this.uid});

  @override
  State<detailtrajet> createState() => _detailtrajetState();
}

TextEditingController _nom = TextEditingController();
TextEditingController _tel = TextEditingController();

class _detailtrajetState extends State<detailtrajet> {
  void Snackbar (String message){
    final snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  @override
  Widget build(BuildContext context) {
    print(widget.heure);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 10,),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: Color(0xffb80000),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Center(
              child: Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                    color: Color(0xffb80000),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.depart +' --> '+widget.arrive,style: TextStyle(fontSize: 30),),
                    Text(widget.heure,style: TextStyle(fontSize: 20),),
                  ],
                )),
              ),
            ),
            SizedBox(height: 100,),
            Center(
              child: Container(
                child: Column(
                  children: [
                    FractionallySizedBox(
                      widthFactor: 0.85,
                      child: TextFormField(
                        controller: _nom,
                        decoration: InputDecoration(

                          labelText: 'Entrer votre Nom',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffb80000)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffb80000)),
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
                        controller: _tel,
                        decoration: InputDecoration(
                          labelText: 'Entrer votre tel',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: Color(0xffb80000)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffb80000)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffb80000)),
                          ),
                          fillColor: Colors.white, // définir la couleur de fond
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 100,),
            Container(
                height: 55,

                child: FractionallySizedBox(
                  widthFactor: 0.85,
                  child: ElevatedButton(
                    onPressed: () {
                      if(_nom.text.isEmpty || _tel.text.isEmpty){
                        Snackbar("Remplir tout les champs");
                      }else{
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => payement(depart: widget.depart, arrivee: widget.arrive, heure: widget.heure, tel: _tel.text, nom: _nom.text, uid: widget.uid,)));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffb80000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text('Envoyer',style: TextStyle(fontSize: 20)),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
