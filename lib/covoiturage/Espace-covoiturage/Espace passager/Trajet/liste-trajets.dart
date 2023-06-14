import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restotaff/covoiturage/Espace-covoiturage/Espace%20passager/SMS/sms.dart';

import '../Voyage/Effectuer.dart';
import 'detail-trajet.dart';



class trajetpassager extends StatefulWidget {
  const trajetpassager({Key? key}) : super(key: key);

  @override
  State<trajetpassager> createState() => _trajetpassagerState();
}
String name="";
class _trajetpassagerState extends State<trajetpassager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 25,),
          Row(
            children: [
              SizedBox(width: 340,),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>smspassager()));

              }, icon: Icon(Icons.message,size: 40,color: Color(0xffb80000),)),
              SizedBox(width: 30,),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>voyageffectuer()));

              }, icon: Icon(Icons.add_alert,size: 40,color: Color(0xffb80000),))
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
                  SizedBox(height: 40,),
                  Container(
                    width: 450,
                    height: 60,
                    child:TextFormField(
                      cursorColor: Color(0xffb80000),

                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,color:Color(0xffb80000) ,),
                        hintText: "Filtre",
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
                      onChanged: (val) {
                        setState(() {
                          name = val;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 70,),
                  Flexible(
                    child:StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance.collection('trajets').snapshots(),
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
                          child:  ListView.builder(
                              itemCount: snapshots.data!.docs.length,
                              itemBuilder: (context, index) {
                                var data = snapshots.data!.docs[index].data()
                                as Map<String, dynamic>;
                                String lieu=data['Depart'];
                                if (data['Depart']
                                    .toString()
                                    .toLowerCase()
                                    .startsWith(name.toLowerCase())) {
                                  return ListTile(
                                    title: GestureDetector(
                                      onTap: (){

                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
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
                                                      height: 90,
                                                      child: Row(
                                                        children: [
                                                          Text(data['Heure'],style: TextStyle(fontSize: 30),),
                                                          SizedBox(width:220,),
                                                          GestureDetector(
                                                            onTap: (){
                                                              print(data['Heure']);
                                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>detailtrajet(heure: data['Heure'], arrive: data['Arrivee'], depart: data['Depart'], uid: data['uid_conducteur'])));

                                                            },
                                                            child: Container(
                                                              width: 100,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                  color: Color(0xffb80000),
                                                                  border: Border.all(color:Color(0xffb80000) ),
                                                                  borderRadius: BorderRadius.circular(10)
                                                              ),
                                                              child: Center(child: Text("Voir détail")),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 50,),
                                                    Container(
                                                      height: 50,
                                                      child: Row(
                                                        children: [
                                                          Icon(Icons.map),
                                                          SizedBox(width:10,),
                                                          Text(data['Depart'],style: TextStyle(fontSize: 20),),
                                                          SizedBox(width:30,),
                                                          Text("-------->",style: TextStyle(fontSize: 30),),
                                                          SizedBox(width:30,),
                                                          Text(data['Arrivee'],style: TextStyle(fontSize: 20),),

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
                                    ),
                                    selected: true,


                                  );
                                }
                                return Text('');
                              }),
                        );
                      },
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
