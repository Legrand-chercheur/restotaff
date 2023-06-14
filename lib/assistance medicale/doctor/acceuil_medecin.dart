import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'info_patient.dart';

class AcceuiPageMedecin extends StatefulWidget {
  const AcceuiPageMedecin({super.key});

  @override
  State<AcceuiPageMedecin> createState() => _AcceuiPageMedecinState();
}

class _AcceuiPageMedecinState extends State<AcceuiPageMedecin> {
  final List Listelement = List.generate(100, (index) {
    return {
      "id": index,
    };
  });

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
                        ' Patient en attente',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 5,
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
            // liste des patient en attente
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFF5F5F3),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: ListView.builder(
                itemCount: Listelement.length,
                itemBuilder: (context, index) => Card(
                  elevation: 6,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.purple,
                      child: Text(Listelement[index]["id"].toString()),
                    ),
                    title: Text('NOM'),
                    subtitle: Text('PRENOM'),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const InfoPatient(),
                              ));
                        },
                        icon: Icon(Icons.arrow_circle_right)),
                  ),
                ),
              ),
            ))
          ],
        )),
      ),
    );
  }
}
