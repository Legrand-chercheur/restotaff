import 'package:flutter/material.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';


class docteurliste extends StatefulWidget {
  const docteurliste({Key? key}) : super(key: key);

  @override
  State<docteurliste> createState() => _docteurlisteState();
}

class _docteurlisteState extends State<docteurliste> {
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
              height: 896,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 60,),
                  Text("Un docteur une guérison",style: TextStyle(fontSize: 30),),
                  SizedBox(height: 40,),
                  Container(
                    width: 430,
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

                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 250,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Dialogs.materialDialog(
                                            msg: 'Effectuer avec succès',
                                            title: "Explication",

                                            color: Colors.white,
                                            context: context,
                                            actions: [

                                              IconsOutlineButton(
                                                onPressed: () {},
                                                text: 'Annuler',
                                                iconData: Icons.cancel_outlined,
                                                textStyle: TextStyle(color: Colors.grey),
                                                iconColor: Colors.grey,
                                              ),
                                              IconsButton(
                                                onPressed: () {},
                                                text: 'Valider',
                                                iconData: Icons.offline_pin,
                                                color: Colors.red,
                                                textStyle: TextStyle(color: Colors.white),
                                                iconColor: Colors.white,
                                              ),
                                            ]);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.red,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Text('Demander assistance',style: TextStyle(fontSize: 20)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 430,
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


                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 250,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Dialogs.materialDialog(
                                            msg: 'Effectuer avec succès',
                                            title: "Explication",
                                            color: Colors.white,
                                            context: context,
                                            actions: [
                                              IconsOutlineButton(
                                                onPressed: () {},
                                                text: 'Annuler',
                                                iconData: Icons.cancel_outlined,
                                                textStyle: TextStyle(color: Colors.grey),
                                                iconColor: Colors.grey,
                                              ),
                                              IconsButton(
                                                onPressed: () {},
                                                text: 'Valider',
                                                iconData: Icons.offline_pin,
                                                color: Colors.red,
                                                textStyle: TextStyle(color: Colors.white),
                                                iconColor: Colors.white,
                                              ),
                                            ]);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.red,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Text('Demander assistance',style: TextStyle(fontSize: 20)),
                                    ),
                                  )
                                ],
                              )

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 430,
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


                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 250,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Dialogs.materialDialog(
                                            msg: 'Effectuer avec succès',
                                            title: "Explication",
                                            color: Colors.white,
                                            context: context,
                                            actions: [
                                              IconsOutlineButton(
                                                onPressed: () {},
                                                text: 'Annuler',
                                                iconData: Icons.cancel_outlined,
                                                textStyle: TextStyle(color: Colors.grey),
                                                iconColor: Colors.grey,
                                              ),
                                              IconsButton(
                                                onPressed: () {},
                                                text: 'Valider',
                                                iconData: Icons.offline_pin,
                                                color: Colors.red,
                                                textStyle: TextStyle(color: Colors.white),
                                                iconColor: Colors.white,
                                              ),
                                            ]);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.red,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Text('Demander assistance',style: TextStyle(fontSize: 20)),
                                    ),
                                  )
                                ],
                              )

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
