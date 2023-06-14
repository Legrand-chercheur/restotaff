import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';
import 'package:restotaff/Restaurant/Resto0.dart';
import 'package:restotaff/loading2.dart';
import 'covoiturage/Espace-covoiturage/Espace.dart';
import 'main.dart';

class acceuil2 extends StatefulWidget {
  const acceuil2({Key? key}) : super(key: key);

  @override
  State<acceuil2> createState() => _acceuil2State();
}

class _acceuil2State extends State<acceuil2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          ' Nom-Application',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  // bouton
                  Row(
                    children: [
                      //bouton d'aide
                      IconButton(
                          color: Colors.black,
                          onPressed: () {

                          },
                          icon: Icon(Icons.help_center_sharp)),
                      //bouton de partage
                      IconButton(
                          onPressed: () {
                            Dialogs.materialDialog(
                                msg: 'Se deconnecter?',

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

                                    },
                                    text: 'Valider',
                                    iconData: Icons.offline_pin,
                                    color: Colors.red,
                                    textStyle: TextStyle(color: Colors.white),
                                    iconColor: Colors.white,
                                  ),
                                ]);
                          },
                          icon: Icon(Icons.share)),
                      //bouton de deconnection
                      IconButton(
                          color: Colors.red,
                          onPressed: () {
                            Dialogs.materialDialog(
                                msg: 'Se deconnecter?',

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
                                    onPressed: () async{
                                      await FirebaseAuth.instance.signOut();
                                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>MyHomePage()), (route) => false);
                                    },
                                    text: 'Valider',
                                    iconData: Icons.offline_pin,
                                    color: Colors.red,
                                    textStyle: TextStyle(color: Colors.white),
                                    iconColor: Colors.white,
                                  ),
                                ]);
                          },
                          icon: Icon(Icons.exit_to_app_sharp))
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F5F3),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30,),
                          Container(
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.25,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 3),
                                    blurRadius: 20,
                                    color: Colors.blue)
                              ],
                              gradient: LinearGradient(colors: [
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
                                    Text(
                                      'Assistance medical',
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text('Assistance medical ',style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),),
                                    SizedBox(
                                      height: 90
                                      ,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      width: MediaQuery.of(context).size.width * 0.2,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                        ),
                                        onPressed: () {
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => loadingpage()));

                                      },
                                        child: const Text(
                                          'Ouvrir',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image(
                                        width: MediaQuery.of(context).size.width * 0.25,
                                        height: MediaQuery.of(context).size.height * 0.15,
                                        image: AssetImage('images/sante1.png')),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.25,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 3),
                                    blurRadius: 20,
                                    color: Colors.red)
                              ],
                              gradient: const LinearGradient(colors: [
                                Color(0XFFFE5F75),
                                Color(0XFFFC9842),
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
                                    Text(
                                      'Multi -Restaurant',
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text('Des plats à volonter ',style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),),
                                    SizedBox(
                                      height: 90,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      width: MediaQuery.of(context).size.width * 0.2,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(context,MaterialPageRoute(builder: (context) => resto0()));
                                        },
                                        child: const Text(
                                          'Ouvrir',
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image(
                                        width: MediaQuery.of(context).size.width * 0.25,
                                        height: MediaQuery.of(context).size.height * 0.15,
                                        image: AssetImage('images/resto2.png')),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.25,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 3),
                                    blurRadius: 20,
                                    color: Color(0xffb80000))
                              ],
                              gradient: LinearGradient(colors: [
                                Color(0xffb80000),
                                Color(0xffb80000),
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
                                    Text(
                                      'Co-Voiturage',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text('Voyager en toutte securité',style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),),
                                    SizedBox(
                                      height: 90,
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      width: MediaQuery.of(context).size.width * 0.2,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xffb80000),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(context,MaterialPageRoute(builder: (context) => espace()));                                        },
                                        child: const Text(
                                          'Ouvrir',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image(
                                        width: MediaQuery.of(context).size.width * 0.25,
                                        height: MediaQuery.of(context).size.height * 0.15,
                                        image:
                                        AssetImage('images/voiture1.png')),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
