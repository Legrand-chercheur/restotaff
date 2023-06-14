import 'package:flutter/material.dart';

import 'discussion.dart';

class docteur extends StatefulWidget {
  const docteur({Key? key}) : super(key: key);

  @override
  State<docteur> createState() => _docteurState();
}

class _docteurState extends State<docteur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60,),
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
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 13,),
                      Text("Docteurs",style: TextStyle(fontSize: 30,)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 13,),
                      Text("Discuter avec un docteur",style: TextStyle(fontSize: 30,)),
                    ],
                  ),
                  SizedBox(height: 150,),
                  Container(
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
                        SizedBox(width: 5,),
                        Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('asset/us.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(90)
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          child: Column(
                            children: [

                              SizedBox(height: 40,),
                              Row(
                                children: [
                                  Text("Nom_Docteur   : ",style: TextStyle(fontSize: 20),),
                                  SizedBox(width: 10,),
                                  Text("TOMa",style: TextStyle(fontSize: 20)),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [

                                  Text("Fonction: ",style: TextStyle(fontSize: 20)),
                                  SizedBox(width: 10,),
                                  Text("Chirurgien",style: TextStyle(fontSize: 20)),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text("heure_disponible: ",style: TextStyle(fontSize: 20)),
                                  SizedBox(width: 10,),
                                  Text("12h00",style: TextStyle(fontSize: 20)),
                                  SizedBox(width: 10,),
                                  IconButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>discussion()));

                                  }, icon: Icon(Icons.arrow_circle_right_rounded,size: 40,))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
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
                        SizedBox(width: 5,),
                        Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('asset/us.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(90)
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          child: Column(
                            children: [

                              SizedBox(height: 40,),
                              Row(
                                children: [
                                  Text("Nom_Docteur   : ",style: TextStyle(fontSize: 20),),
                                  SizedBox(width: 10,),
                                  Text("TOMa",style: TextStyle(fontSize: 20)),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [

                                  Text("Fonction: ",style: TextStyle(fontSize: 20)),
                                  SizedBox(width: 10,),
                                  Text("Chirurgien",style: TextStyle(fontSize: 20)),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text("heure_disponible: ",style: TextStyle(fontSize: 20)),
                                  SizedBox(width: 10,),
                                  Text("12h00",style: TextStyle(fontSize: 20)),
                                  SizedBox(width: 10,),
                                  IconButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>discussion()));

                                  }, icon: Icon(Icons.arrow_circle_right_rounded,size: 40,))
                                ],
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
          ),
        ],
      ),
    );
  }
}
