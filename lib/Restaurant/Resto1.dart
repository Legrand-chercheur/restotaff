import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restotaff/Restaurant/liste.dart';
import 'package:restotaff/Restaurant/panier.dart';

import '../acceuil2.dart';
import 'Panier_Class.dart';

class Resto1 extends StatefulWidget {
  const Resto1({Key? key}) : super(key: key);

  @override
  State<Resto1> createState() => _Resto1State();
}
String name="";
class _Resto1State extends State<Resto1> {

  @override
  Widget build(BuildContext context) {
    List<Paniers> _List_Event = <Paniers>[];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
           Row(
             children: [
               IconButton(onPressed: (){
                 Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => acceuil2()));

               }, icon: Icon(Icons.arrow_back,size: 30),),
               SizedBox(width:MediaQuery.of(context).size.width *0.7,),
               Row(
                 children: [
                   IconButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>panier()));
                   },
                       icon: Icon(CupertinoIcons.shopping_cart,size: 30,)),
                   SizedBox(width: 5,),
                   Text('${_List_Event.length}')
                 ],
               )
             ],
           ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffe6e6e6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Row(children:[
                    SizedBox(width: 10,),
                    Text("Bon restaurant",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,),)
                  ]),
                  Row(children:[
                    SizedBox(width: 10,),
                    Text("Près de vous",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,),)
                  ]),
                  SizedBox(height: 30,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: "Rechercher votre restaurant"
                      ),
                      onChanged: (val) {
                        setState(() {
                          name = val;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Text("Restaurant",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                          SizedBox(width: 10,),
                          Text("A proximité  >",style: TextStyle(fontSize: 15,color: Colors.red),),
                        ],
                      ),
                    ],
                  ),
                  Flexible(
                    child:StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance.collection('restaurant').snapshots(),
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
                              itemBuilder: (BuildContext context, int index) {
                                var data = snapshots.data!.docs[index].data()
                                as Map<String, dynamic>;
                                String lieu=data['nom'];
                                if (data['nom']
                                    .toString()
                                    .toLowerCase()
                                    .startsWith(name.toLowerCase())) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => liste(snapshots.data!.docs[index].data())));
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width *0.5,
                                        height: MediaQuery.of(context).size.height *0.5,
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
                                            Container(
                                              height:MediaQuery.of(context).size.height*0.2,
                                              width: MediaQuery.of(context).size.width*0.4,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(data['image']),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                            ),
                                            SizedBox(height:5,),
                                            Text(data['nom'],style: TextStyle(fontSize: 25),),
                                            SizedBox(height: 5,),
                                            Text(data['adresse'],style: TextStyle(fontSize: 25),)

                                          ],
                                        ),

                                      ),
                                    ),
                                  );
                                }
                                return Text('');
                              }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: MediaQuery.of(context).size.width /
                                (MediaQuery.of(context).size.height / 1.5),
                          ),),
                        );
                      },
                    ),
                  )


                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
