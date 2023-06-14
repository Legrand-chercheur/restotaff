import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:restotaff/Restaurant/facturation.dart';

import 'liste.dart';

class panier extends StatefulWidget {
  const panier({Key? key}) : super(key: key);

  @override
  State<panier> createState() => _panierState();
}

class _panierState extends State<panier> {
  int total=1;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    final user = FirebaseAuth.instance.currentUser;
    var uid = '';
    if(user != null){
      uid = user!.uid;
    }
    final affiche = FirebaseFirestore.instance
        .collection('panier')
        .where('uid_users',isEqualTo: user!.uid);

    int prix_total = 0;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);

                }, icon: Icon(Icons.arrow_back,size: 30),),
              ],
            ),
            SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffe6e6e6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              height: 880,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Center(
                    child: Text("Mon Panier",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,),),
                  ),
                  SizedBox(height: 30,),
                  FirestoreQueryBuilder<Map<String, dynamic>>(
                    query: affiche,
                    builder: (context, snapshot, _) {
                      // ...
                      return Expanded(
                          child: ListView.builder(
                              itemCount: snapshot.docs.length,
                              itemBuilder: (context,index){
                                final resu = snapshot.docs[index].data();
                                int prix = 0;
                                prix = resu['prix'];
                                prix_total = prix_total + prix ;
                                return Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *0.9,
                                    height: MediaQuery.of(context).size.height * 0.25,
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
                                        SizedBox(width: 5,),
                                        Container(
                                          width: MediaQuery.of(context).size.width *0.3,
                                          height: MediaQuery.of(context).size.height * 0.2,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(resu['image']),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                        ),
                                        SizedBox(width: 30,),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(width: 170,),
                                                IconButton(onPressed: (){}, icon: Icon(Icons.delete,size: 40,))
                                              ],
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Text("Nom: ",style: TextStyle(fontSize: 20),),
                                                SizedBox(width: 10,),
                                                Text(resu['nom'],style: TextStyle(fontSize: 20)),
                                              ],
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [

                                                Text("Catégorie: ",style: TextStyle(fontSize: 20)),
                                                SizedBox(width: 10,),
                                                Text(resu['categorie'],style: TextStyle(fontSize: 20)),
                                              ],
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Text("Prix: ",style: TextStyle(fontSize: 20)),
                                                SizedBox(width: 10,),
                                                Text('${resu['prix']}',style: TextStyle(fontSize: 20)),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .spaceEvenly,
                                              children: [
                                                IconButton(onPressed: (){
                                                  if (total < 1) {
                                                    setState(() {
                                                      total = 1;
                                                    });
                                                  } else if (total > 1) {
                                                    setState(() {
                                                      total -= 1;
                                                    });
                                                  }
                                                }, icon: Icon(Icons.remove,size: 30,)),
                                                SizedBox(width: 20,),
                                                Text(
                                                  "$total", style: TextStyle(fontSize: 20),),
                                                SizedBox(width: 20,),
                                                IconButton(onPressed: (){
                                                  setState(() {
                                                    total += 1;
                                                  });
                                                }, icon: Icon(Icons.add,size: 30,))
                                              ],
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
                  ),
                  SizedBox(height: 50,),
                  Container(
                    width: MediaQuery.of(context).size.width *0.9,
                    height: MediaQuery.of(context).size.height * 0.2,
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
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Row(children: [
                          SizedBox(width: 5,),
                          Text("Facture :",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                            SizedBox(width: 5,),
                            Text("N°000007",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),

                          )],),
                        SizedBox(height: 10,),
                        Row(children: [
                          SizedBox(width: 5,),
                          Text("Total paiement :",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                          SizedBox(width: 5,),
                          Text("14000 FCA",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),)
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [SizedBox(width: 5,),Text("Livraison :",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),SizedBox(width: 5,),
                          Text("En cours",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),)],),
                        Divider(
                          height: 30,
                        ),
                        SizedBox(height: 10,),
                        Row(children: [SizedBox(width: 5,),Text("Total :",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),SizedBox(width: 5,),
                          Text("${15220} cFCA",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),)],),
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(

                      height: MediaQuery.of(context).size.height * 0.07,

                      child: FractionallySizedBox(
                        widthFactor: 0.9,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => facturation()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text('Valider',style: TextStyle(fontSize: 20)),
                        ),
                      )
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

}

