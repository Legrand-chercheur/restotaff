import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';

import 'package:restotaff/covoiturage/Espace-covoiturage/Espace%20conducteur/Reservation/liste-reservation.dart';

import '../SMS/sms.dart';

class reservationtrajet extends StatefulWidget {
  const reservationtrajet({Key? key}) : super(key: key);

  @override
  State<reservationtrajet> createState() => _reservationtrajetState();
}

class _reservationtrajetState extends State<reservationtrajet> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countDocuments();
  }
  var uid="";
  int compter = 0;
  var depart = "";
  Future<int> countDocuments() async {
    QuerySnapshot _myDoc = await FirebaseFirestore.instance.collection('trajet_utilisateur').where('depart', isEqualTo: depart).get();
    List<DocumentSnapshot> _myDocCount = _myDoc.docs;
    print(_myDocCount.length);
    setState(() {
      compter = _myDocCount.length;
    });// Count of Documents in Collection
    return _myDocCount.length;
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    uid = user!.uid;
    print(uid);

    final affiche2 = FirebaseFirestore.instance
        .collection('trajets')
        .where('uid_conducteur',isEqualTo:uid );

    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 25,),
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
          SizedBox(height: 20,),
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
                                depart = resu['Depart'];
                                return GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>listereservation(plus: resu['Depart'],)));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
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
                                                      Text("Trajet: ",style: TextStyle(fontSize: 30),),
                                                      SizedBox(width:150,),
                                                      Text(resu['Depart'],style: TextStyle(fontSize: 30),),
                                                    ],
                                                  ),
                                                ),

                                                Container(
                                                  height: 50,
                                                  child: Row(
                                                    children: [
                                                      Icon(Icons.map),
                                                      SizedBox(width:10,),
                                                      Text(resu['Depart'],style: TextStyle(fontSize: 30),),
                                                      SizedBox(width:20,),
                                                      Text("-------->",style: TextStyle(fontSize: 30),),
                                                      SizedBox(width:20,),
                                                      Text(resu['Arrivee'],style: TextStyle(fontSize: 30),),

                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 10,),
                                                Container(
                                                  height: 50,
                                                  child: Row(
                                                    children: [
                                                      Text("${compter} réservations",style: TextStyle(fontSize: 30),),
                                                      SizedBox(width:110,),
                                                      IconButton(onPressed: (){
                                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>listereservation(plus: resu['Depart'],)));

                                                      }, icon: Icon(Icons.arrow_circle_right,size: 50,color: Color(0xffb80000),))
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
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
    );
  }
}
