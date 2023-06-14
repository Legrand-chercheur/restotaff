import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class PatientTraite extends StatefulWidget {
  const PatientTraite({super.key});

  @override
  State<PatientTraite> createState() => _PatientTraiteState();
}

class _PatientTraiteState extends State<PatientTraite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                          ' Liste Patient traité',
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
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F5F3),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) => patient,
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

// info du patient traite
  Widget patient = Container(
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.all(15),
    width: 500,
    height: 200,
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(offset: Offset(0, 3), blurRadius: 20, color: Colors.grey)
    ], borderRadius: BorderRadius.circular(20), color: Colors.white),
    child: Row(
      children: [
        SizedBox(
          width: 20,
        ),
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
          width: 60,
        ),
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Nom & Prénom',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'KERENGUE NDIP Marthe ',
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Age',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '56 ans',
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                      SizedBox(
                        height: 3,
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
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                      SizedBox(
                        height: 3,
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
                        'Problème d\'estomac',
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
