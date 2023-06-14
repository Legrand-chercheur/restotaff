import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InfoPatient extends StatefulWidget {
  const InfoPatient({super.key});

  @override
  State<InfoPatient> createState() => _InfoPatientState();
}

// information du patient
class _InfoPatientState extends State<InfoPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.blue),
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
                        ' Informations \n du patient',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
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
                        color: Colors.white,
                        onPressed: () {},
                        icon: Icon(Icons.help_center_sharp)),
                    //bouton de partage
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share),
                      color: Colors.white,
                    ),
                    //bouton de deconnection
                    IconButton(
                        color: Colors.black,
                        onPressed: () {},
                        icon: Icon(Icons.exit_to_app_sharp))
                  ],
                ),
              ],
            ),

            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFF5F5F3),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(15),
                    width: 500,
                    height: 350,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 20,
                              color: Colors.grey)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                  image: AssetImage('asset/profil.jpeg'), // Image
                                  fit: BoxFit.cover, // Ajuster l'image pour couvrir tout le conteneur
                                ),
                              ),

                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            // list detailé du patient
                            Container(
                              width: 175,
                              height: 300,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nom & Prénom',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'KERENGUE NDIP Marthe ',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black),
                                  ),
                                  Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Age',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '56 ans',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black),
                                  ),
                                  Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Sexe',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Feminin ',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black),
                                  ),
                                  Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Pathologie',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'It is a long established fact that a reader will bal distributias opposed to using .  ',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                  Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // les boutons accepter ou rejeter la demande
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 200,
                        child: ElevatedButton.icon(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.green,shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),),
                            onPressed: () {},
                            icon: Icon(
                              Icons.done,
                            ),
                            label: Text('Accepter',style: TextStyle(fontSize: 20),)),
                      ),
                      Container(
                        height: 60,
                        width: 200,
                        child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent,shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),),
                            onPressed: () {},
                            icon: Icon(
                              Icons.close,
                            ),
                            label: Text('Refuser',style: TextStyle(fontSize: 20))),
                      ),
                    ],
                  ),
                ],
              ),
            ))
          ],
        )),
      ),
    );
  }
}
