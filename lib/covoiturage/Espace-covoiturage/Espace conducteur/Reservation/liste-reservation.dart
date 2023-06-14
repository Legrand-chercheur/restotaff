import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';
import 'package:restotaff/covoiturage/Espace-covoiturage/Espace%20conducteur/SMS/sms.dart';

class listereservation extends StatefulWidget {
  var plus;
  listereservation({required this.plus});

  @override
  State<listereservation> createState() => _listereservationState();
}
  var uid = "";

class _listereservationState extends State<listereservation> {
  void Snackbar (String message){
    final snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  CollectionReference trajet_users = FirebaseFirestore.instance.collection('trajet_utilisateur');

  Future<void> ChangerStatut(id) {
    return trajet_users
        .doc(id)
        .update({'statut': 'valide'})
        .then((value) => Snackbar("Statut change"))
        .catchError((error) => Snackbar("Echec: $error"));
  }
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    uid = user!.uid;
    print(uid);

    final affiche2 = FirebaseFirestore.instance
        .collection('trajet_utilisateur')
        .where('depart',isEqualTo: widget.plus)
        .where('statut', isEqualTo: 'attente')
        .where('uid_conducteur',isEqualTo:uid );
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
              SizedBox(width: 390,),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>smsui()));

              }, icon: Icon(Icons.message,size: 40,color: Color(0xffb80000),))
            ],
          ),
          SizedBox(height: 15,),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Container(
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

                                                  },
                                                  child: Container(
                                                    width: 440,
                                                    height: 200,
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

                                                        SizedBox(width: 20,),
                                                        Container(
                                                          child: Column(
                                                            children: [

                                                              Container(
                                                                height: 70,
                                                                child: Row(
                                                                  children: [
                                                                    Text("Nom: ",style: TextStyle(fontSize: 30),),
                                                                    SizedBox(width:220,),
                                                                    Text(resu['nom_passager'],style: TextStyle(fontSize: 30),),
                                                                  ],
                                                                ),
                                                              ),

                                                              Container(
                                                                height: 50,
                                                                child: Row(
                                                                  children: [

                                                                    Text("Numero",style: TextStyle(fontSize: 30),),
                                                                    SizedBox(width:150,),
                                                                    Text(resu['tel'],style: TextStyle(fontSize: 30),),


                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(height: 10,),
                                                              Container(
                                                                height: 50,
                                                                child: Row(
                                                                  children: [
                                                                    IconsOutlineButton(
                                                                      onPressed: () {},
                                                                      text: 'Annuler',
                                                                      color: Color(0xffb80000),
                                                                      iconData: Icons.cancel_outlined,
                                                                      textStyle: TextStyle(color: Colors.white,fontSize: 20),
                                                                      iconColor: Colors.white,

                                                                    ),
                                                                    SizedBox(width: 200,),
                                                                    IconsButton(
                                                                      onPressed: () {
                                                                        Dialogs.materialDialog(
                                                                          msg: 'Valider cette reservation?',
                                                                          title: "Détails de la demande",
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
                                                                                ChangerStatut(
                                                                                    resu['nom_passager']
                                                                                );
                                                                              },
                                                                              text: 'Valider',
                                                                              iconData: Icons.offline_pin,
                                                                              color: Colors.red,
                                                                              textStyle: TextStyle(color: Colors.white),
                                                                              iconColor: Colors.white,
                                                                            ),
                                                                          ]
                                                                        );

                                                                      },
                                                                      text: 'Valider',
                                                                      iconData: Icons.offline_pin,
                                                                      color: Color(0xffb80000),
                                                                      textStyle: TextStyle(color: Colors.white,fontSize: 20),
                                                                      iconColor: Colors.white,
                                                                    ),

                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
