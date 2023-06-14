import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:restotaff/covoiturage/Espace-covoiturage/Espace%20passager/paiement/payement-covoiturage.dart';

import '../../../../connexion-inscription/Register-page.dart';
import 'attente.dart';


class voyageffectuer extends StatefulWidget {
  const voyageffectuer({Key? key}) : super(key: key);

  @override
  State<voyageffectuer> createState() => _voyageffectuerState();
}

class _voyageffectuerState extends State<voyageffectuer> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final uid = user!.uid;
    print(uid);
    final affiche2 = FirebaseFirestore.instance
        .collection('trajet_utilisateur')
        .where('statut',isEqualTo: 'valide')
        .where('uid_users',isEqualTo:uid );
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 45,),
          Row(
            children: [
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
          SizedBox(height: 25,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffe6e6e6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              height: 986,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => attente()));

                    },
                    child: Container(
                      height: 80, // Hauteur du conteneur
                      width: 400, // Largeur du conteneur
                      decoration: BoxDecoration(
                        color: Color(0xffe6e6e6), // Couleur de fond
                        borderRadius: BorderRadius.all(
                          Radius.circular(20), // Coins arrondis
                        ),
                        border: Border.all(
                          color: Color(0xffb80000), // Couleur de la bordure
                          width: 1.0, // Largeur de la bordure
                        ),
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => acceuill2()));

                            },
                            child: Container(
                              width: 200,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white70,
                                border: Border.all(color: Color(0xffb80000))

                              ),
                              child: Center(
                                child: Text("Voyage",style: TextStyle(fontSize: 20),),
                              ),
                            ),
                          ),

                          SizedBox(width: 60,),
                          Center(
                            child: Text("En attente",style: TextStyle(fontSize: 20)),
                          )

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffe6e6e6),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                      height: 986,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [

                          SizedBox(height: 70,),
                          FirestoreQueryBuilder<Map<String, dynamic>>(
                            query:affiche2,
                            builder: (context, snapshot, _) {
                              // ...

                              return Expanded(
                                  child: ListView.builder(
                                      itemCount: snapshot.docs.length,
                                      itemBuilder: (context,index){
                                        final resu = snapshot.docs[index].data();
                                        return GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>payement(depart: resu['depart'], arrivee: resu['arrivee'], heure: resu['heure'], nom: resu['nom_passager'], tel: resu['tel'], uid: resu['uid_conducteur'],  )));

                                          },
                                          child: Container(
                                            width: 400,
                                            height: 100,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0,5),
                                                      color: Colors.grey,
                                                      blurRadius: 7
                                                  )
                                                ],
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 15,),
                                                Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage('asset/us.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      borderRadius: BorderRadius.circular(90)
                                                  ),
                                                ),
                                                SizedBox(width: 20,),
                                                Column(
                                                  children: [
                                                    SizedBox(height: 5,),
                                                    Container(
                                                      width: 280,
                                                      height: 40,

                                                      child: Row(
                                                        children: [
                                                          Text(resu['nom_passager'],style: TextStyle(fontSize: 15),),
                                                          SizedBox(width: 220,),
                                                          Icon(Icons.access_alarm)
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 10,),
                                                    Container(
                                                      width: 280,
                                                      height: 40,

                                                      child: Row(
                                                        children: [
                                                          Text(resu['heure'],style: TextStyle(fontSize: 15),),
                                                          SizedBox(width:50,),
                                                          Text(resu['depart'],style: TextStyle(fontSize: 15),),
                                                          SizedBox(width:20,),
                                                          Text("-------->",style: TextStyle(fontSize: 15),),
                                                          SizedBox(width:20,),
                                                          Text(resu['arrivee'],style: TextStyle(fontSize: 15),),
                                                        ],
                                                      ),
                                                    ),

                                                  ],
                                                ),

                                              ],
                                            ),
                                          ),
                                        );
                                      }
                                  )
                              );
                            },
                          )

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
