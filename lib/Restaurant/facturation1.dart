import 'package:flutter/material.dart';

import 'facturation.dart';

class facturation1 extends StatefulWidget {
  const facturation1({Key? key}) : super(key: key);

  @override
  State<facturation1> createState() => _facturation1State();
}

class _facturation1State extends State<facturation1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 80),
              child: Container(
                child: Image(image: AssetImage('asset/Carte.png'),),
              ),
            ),
            SizedBox(height: 90,),
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffe6e6e6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 80,),
                  Row(
                    children: [
                      SizedBox(width: 40,),
                      Container(
                          width: 400,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Entrer votre numero",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                              )
                            ),
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 60,
                    width: 400,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),onPressed: (){
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => facturation1()));

                    }, child: Text("Confirmer")),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 60,
                    width: 400,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),onPressed: (){
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => facturation()));

                    }, child: Text("Annuler")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
