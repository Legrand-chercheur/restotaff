import 'package:flutter/material.dart';
import 'package:restotaff/assistance%20medicale/doctor/acceuil_medecin.dart';
import 'package:restotaff/assistance%20medicale/doctor/accueil.dart';
import 'package:restotaff/assistance%20medicale/liste_de.dart';

import 'docteur-liste.dart';

class pro extends StatefulWidget {
  const pro({Key? key}) : super(key: key);

  @override
  State<pro> createState() => _proState();
}

class _proState extends State<pro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 20),
          Expanded(
            child: Container(
              height: 882,
              decoration: BoxDecoration(
                color: Color(0xffe6e6e6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Accueil()));
                        },
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(15),
                              width: MediaQuery.of(context).size.width*0.42,
                              height: MediaQuery.of(context).size.height *0.2,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(0, 3),
                                      blurRadius: 20,
                                      color: Colors.blue)
                                ],
                                gradient: const LinearGradient(colors: [
                                  Color(0XFF045DE9),
                                  Color(0XFF09C6F9),
                                ]),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 180,
                                        child:Image(image: AssetImage('asset/cardio.png')) ,),
                                      Text("Assistance medical",style: TextStyle(fontSize: 20),)

                                    ],
                                  ),

                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(15),
                                  width: MediaQuery.of(context).size.width*0.42,
                                  height: MediaQuery.of(context).size.height *0.1,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset(0, 3),
                                          blurRadius: 20,
                                          color: Colors.green)
                                    ],
                                    gradient: const LinearGradient(colors: [
                                      Colors.green,
                                      Colors.lightGreenAccent,
                                    ]),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 80,
                                        child:Image(image: AssetImage('asset/steto.png')) ,),
                                      Text("Consultation",style: TextStyle(fontSize: 17),)

                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  margin: const EdgeInsets.all(5),
                                  width: MediaQuery.of(context).size.width*0.42,
                                  height: MediaQuery.of(context).size.height *0.1,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset(0, 3),
                                          blurRadius: 20,
                                          color: Colors.black12)
                                    ],
                                    gradient: const LinearGradient(colors: [
                                      Colors.white,
                                      Colors.white,
                                    ]),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 80,
                                        child:Image(image: AssetImage('asset/casque.png')) ,),
                                      Text("Assistance",style: TextStyle(fontSize: 20),)

                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),

                      GestureDetector(
                        onTap: (){
                        },
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(15),
                              width: 200,
                              height: 230,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(0, 3),
                                      blurRadius: 20,
                                      color: Colors.blue)
                                ],
                                gradient: const LinearGradient(colors: [
                                  Color(0XFF045DE9),
                                  Color(0XFF09C6F9),
                                ]),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 80,
                                        child:Text("17",style: TextStyle(fontSize: 70),) ,),
                                      Text("Nombre généraliste",style: TextStyle(fontSize: 20),)

                                    ],
                                  ),

                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(15),
                                  width: 200,
                                  height: 230,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset(0, 3),
                                          blurRadius: 20,
                                          color: Colors.blue)
                                    ],
                                    gradient: const LinearGradient(colors: [
                                      Color(0XFF045DE9),
                                      Color(0XFF09C6F9),
                                    ]),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 150,
                                            width: 80,
                                            child:Text("14",style: TextStyle(fontSize: 70),) ,),
                                          Text("Nombre spécialiste",style: TextStyle(fontSize: 20),)

                                        ],
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            )
                          ],
                        ),
                      ),

                      const SizedBox(height: 30,),

                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>listedocteurs()));

                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(15),
                              width: 200,
                              height: 230,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(0, 3),
                                      blurRadius: 20,
                                      color: Colors.black12)
                                ],
                                gradient: const LinearGradient(colors: [
                                  Colors.white,
                                  Colors.white,
                                ]),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 180,
                                        child:Image(image: AssetImage('asset/assistance.png')) ,),
                                      Text("Se faire assister",style: TextStyle(fontSize: 20),)

                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>docteur()));

                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(15),
                                  width: 200,
                                  height: 230,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset(0, 3),
                                          blurRadius: 20,
                                          color: Colors.green)
                                    ],
                                    gradient: const LinearGradient(colors: [
                                      Colors.green,
                                      Colors.lightGreen,
                                    ]),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 150,
                                            width: 180,
                                            child:Image(image: AssetImage('asset/sms.png')) ,),
                                          Text("Discuter",style: TextStyle(fontSize: 20),)

                                        ],
                                      ),

                                    ],
                                  ),
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
            ),
          ),
        ],
      ),
    );
  }
}
