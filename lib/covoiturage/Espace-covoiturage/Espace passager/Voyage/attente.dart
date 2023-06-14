import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';

import 'Effectuer.dart';

class attente extends StatefulWidget {
  const attente({Key? key}) : super(key: key);

  @override
  State<attente> createState() => _attenteState();
}

class _attenteState extends State<attente> {
  CollectionReference trajet_users = FirebaseFirestore.instance.collection('trajet_utilisateur');

  Future<void> deleteTrajet(id) {
    return trajet_users
        .doc(id)
        .delete()
        .then((value) => print("Supprimer"))
        .catchError((error) => print("Echec: $error"));
  }
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final uid = user!.uid;
    print(uid);
    final affiche2 = FirebaseFirestore.instance
        .collection('trajet_utilisateur')
        .where('statut',isEqualTo: 'attente')
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
                  Container(
                    height: 80, // Hauteur du conteneur
                    width: 400, // Largeur du conteneur
                    decoration: BoxDecoration(
                      color: Colors.white, // Couleur de fond
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => voyageffectuer()));

                          },
                          child: Container(
                            width: 200,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:Color(0xffe6e6e6),
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
                                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>trajetpassager()));

                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
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
                                                        width: 300,
                                                        height: 40,

                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text(resu['nom_passager'],style: TextStyle(fontSize: 15),),
                                                            Icon(Icons.access_alarm),
                                                            IconButton(onPressed: (){
                                                              Dialogs.materialDialog(
                                                                  msg: 'Confirmer',

                                                                  color: Colors.white,
                                                                  context: context,
                                                                  actions: [

                                                                    IconsOutlineButton(
                                                                      onPressed: () {
                                                                        Navigator.pop(context);
                                                                      },
                                                                      text: 'Annuler',
                                                                      iconData: Icons.cancel_outlined,
                                                                      textStyle: TextStyle(color: Colors.grey),
                                                                      iconColor: Colors.grey,
                                                                    ),
                                                                    IconsButton(
                                                                      onPressed: () {
                                                                        deleteTrajet(resu['uid_users']);
                                                                      },
                                                                      text: 'Valider',
                                                                      iconData: Icons.offline_pin,
                                                                      color: Colors.red,
                                                                      textStyle: TextStyle(color: Colors.white),
                                                                      iconColor: Colors.white,
                                                                    ),
                                                                  ]);
                                                            }, icon: Icon(Icons.close,color: Colors.red,))
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 10,),
                                                      Container(
                                                        width: 300,
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
