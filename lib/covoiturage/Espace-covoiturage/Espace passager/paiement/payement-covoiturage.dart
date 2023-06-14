import 'package:flutter/material.dart';
import 'package:restotaff/covoiturage/Espace-covoiturage/Espace%20passager/paiement/payement1.dart';

import '../Voyage/Effectuer.dart';



class payement extends StatefulWidget {
  var depart, arrivee, heure, nom, tel, uid;
  payement({required this.depart, required this.arrivee, required this.heure, required this.nom, required this.tel,  required this.uid});

  @override
  State<payement> createState() => _payementState();
}

class _payementState extends State<payement> {
  void Snackbar (String message){
    final snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              IconButton(onPressed: (){
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => voyageffectuer()));

              }, icon: Icon(Icons.arrow_back,size: 30),),
            ],
          ),
          SizedBox(height: 60,),
          Container(
            child: Image(image: AssetImage('asset/Carte.png'),),
          ),
          SizedBox(height: 130,),
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
                    SizedBox(width: 30,),
                    Container(
                      height: 240,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xffe6e6e6),
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Image(image: AssetImage('asset/airtel.png'),height: 100,),
                          SizedBox(height: 30,),
                          Container(
                            height: 60,
                            width: 120,
                            child: ElevatedButton(style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),onPressed: (){
                              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => payement1(depart: widget.depart, arrivee: widget.arrivee, nom: widget.nom, tel: widget.tel, heure: widget.heure, uid: widget.uid,)));
                            }, child: Text("Payer")),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 240,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xffe6e6e6),
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Image(image: AssetImage('asset/moov.png'),height: 100,),
                          SizedBox(height: 30,),
                          Container(
                            height: 60,
                            width: 120,
                            child: ElevatedButton(style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),onPressed: (){
                              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => payement1(depart: widget.depart, arrivee: widget.arrivee, nom: widget.nom, tel: widget.tel, heure: widget.heure, uid: widget.uid, )));

                            }, child: Text("Payer")),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );

  }

}
