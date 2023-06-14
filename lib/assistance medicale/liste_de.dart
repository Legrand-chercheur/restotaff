import 'package:flutter/material.dart';

import 'doctor_liste.dart';

class listedocteurs extends StatefulWidget {
  const listedocteurs({Key? key}) : super(key: key);

  @override
  State<listedocteurs> createState() => _listedocteursState();
}

class _listedocteursState extends State<listedocteurs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height: 80),
          Expanded(
            child: Container(
              height: 966,
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
                      SizedBox(height: 30,),
                      Center(
                        child: Text("Faire le choix",style: TextStyle(fontSize: 30),),
                      ),
                      SizedBox(height: 80,),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>docteurliste()));

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

                                      Text("Généraliste",style: TextStyle(fontSize: 35),)

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
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>docteur()));

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

                                          Text("Gynécologue",style: TextStyle(fontSize: 30),)
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
                      SizedBox(height: 30,),
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
                                      Text("Pediatre",style: TextStyle(fontSize: 44),)

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
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>docteur()));

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
                                      SizedBox(width: 5,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Infirmier",style: TextStyle(fontSize: 44),)

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
