import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restotaff/Restaurant/Panier_Class.dart';
import 'package:restotaff/Restaurant/panier.dart';

import 'Resto1.dart';

class liste extends StatefulWidget {
  var listes;
  liste([this.listes]);

  @override
  State<liste> createState() => _listeState();
}

String names="";
class _listeState extends State<liste> {

  CollectionReference users = FirebaseFirestore.instance.collection('panier');

  void Snackbar (String message){
    final snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  int compter = 0;
  final user = FirebaseAuth.instance.currentUser;

  Future<int> countDocuments() async {
    QuerySnapshot _myDoc = await FirebaseFirestore.instance.collection('panier').where('uid_users', isEqualTo: user!.uid).get();
    List<DocumentSnapshot> _myDocCount = _myDoc.docs;
    print(_myDocCount.length);
    setState(() {
      compter = _myDocCount.length;
    });// Count of Documents in Collection
    return _myDocCount.length;
  }

  Future<void> Ajouter_panier(String uid_users, String image, String nom, int prix, String uid_resto, String categorie) {
    // Call the user's CollectionReference to add a new user
    return users
        .add({
      'uid_users': uid_users, // John Doe
      'image': image, // Stokes and Sons
      'nom': nom ,// 42
      'prix': prix,
      'categorie': categorie,
      'uid_resto':uid_resto,
      'status':"En cours"
    })
        .then((value) => Snackbar("Ajouter au panier"))
        .catchError((error) => Snackbar("Probleme de connexion"));
  }

  @override
  Widget build(BuildContext context) {
    List<Paniers> _List_Event = <Paniers>[];
    print(widget.listes);
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
                SizedBox(width:MediaQuery.of(context).size.width *0.7,),
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>panier()));
                    }, icon: Icon(CupertinoIcons.shopping_cart,size: 30,)),
                    Text('${compter}')
                  ],
                )
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
                  SizedBox(height: 50,),
                  Container(
                    width: MediaQuery.of(context).size.width *0.9,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          hintText: "Filtrer vos recherches"
                      ),
                      onChanged: (val) {
                        setState(() {
                          names = val;
                        });
                      },
                    ),
                  ),
                  Flexible(
                    child:StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance.collection('plats').where('uid',isEqualTo:widget.listes['uid']).snapshots(),
                      builder: (context, AsyncSnapshot<QuerySnapshot> snapshots) {
                        if(snapshots.hasError){
                          return Text("");
                        }
                        if(snapshots.connectionState == ConnectionState.waiting){
                          return Text("");
                        }
                        return (snapshots.connectionState == ConnectionState.waiting)
                            ? Center(
                          child: CircularProgressIndicator(),
                        )
                            : GestureDetector(
                          onTap: (){

                          },
                          child:  GridView.builder(
                              itemCount: snapshots.data!.docs.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: ( BuildContext context, int index) {
                                var data = snapshots.data!.docs[index].data()
                                as Map<String, dynamic>;
                                String lieu=data['nom'];
                                if (data['nom']
                                    .toString()
                                    .toLowerCase()
                                    .startsWith(names.toLowerCase())) {
                                  return GestureDetector(
                                    onTap: () {

                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width *0.5,
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
                                            SizedBox(width: 10,),
                                            Container(
                                              height: MediaQuery.of(context).size.height / 6,
                                              width: MediaQuery.of(context).size.width / 3,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(data['image']),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    Text("Nom: ",style: TextStyle(fontSize: 20),),
                                                    SizedBox(width: 10,),
                                                    Text(data['nom'],style: TextStyle(fontSize: 20)),
                                                  ],
                                                ),
                                                SizedBox(height: MediaQuery.of(context).size.height / 70,),
                                                Row(
                                                  children: [

                                                    Text("Catégorie: ",style: TextStyle(fontSize: 20)),
                                                    SizedBox(width: 10,),
                                                    Text(data['Categorie'],style: TextStyle(fontSize: 20)),
                                                  ],
                                                ),
                                                SizedBox(height: MediaQuery.of(context).size.height / 70,),
                                                Row(
                                                  children: [
                                                    Text("Prix: ",style: TextStyle(fontSize: 20)),
                                                    SizedBox(width: 10,),
                                                    Text("${data['prix']} FCFA",style: TextStyle(fontSize: 20)),
                                                  ],
                                                ),
                                                SizedBox(height: MediaQuery.of(context).size.height / 70,),
                                                Row(
                                                  children: [
                                                    SizedBox(width: MediaQuery.of(context).size.height / 35,),
                                                    Container(
                                                      height: MediaQuery.of(context).size.height / 20,
                                                      width: MediaQuery.of(context).size.height / 5,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                          primary: Colors.blue,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(20),
                                                          ),
                                                        ),
                                                        onPressed: (){
                                                          final user = FirebaseAuth.instance.currentUser;
                                                          Ajouter_panier(user!.uid,data['image'],data['nom'],data['prix'],widget.listes['uid'], data['Categorie']);
                                                        },
                                                        child: Text("Ajouter au panier"),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                return Text('');
                              }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: MediaQuery.of(context).size.width /
                                (MediaQuery.of(context).size.height / 4),
                          ),),
                        );
                      },
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
}
