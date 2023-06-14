import 'package:flutter/material.dart';


class UpdateProfil extends StatefulWidget {
  const UpdateProfil({Key? key}) : super(key: key);

  @override
  State<UpdateProfil> createState() => _UpdateProfilState();
}

class _UpdateProfilState extends State<UpdateProfil> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Mise a jour - Restaurant",style: TextStyle(fontSize: 25),),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text("Restaurant",style: TextStyle(fontSize: 30),),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child:Text("Mise a jour Restaurant",style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blue
                    ),
                    child: Center(
                      child: Text("Image"),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.85,
                    child: TextFormField(

                      decoration: InputDecoration(

                        labelText: 'Nom',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        fillColor: Colors.white, // définir la couleur de fond
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.85,
                    child: TextFormField(

                      decoration: InputDecoration(
                        labelText: 'Adresse',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        fillColor: Colors.white, // définir la couleur de fond
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.85,
                    child: TextFormField(

                      decoration: InputDecoration(
                        labelText: 'Contact',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        fillColor: Colors.white, // définir la couleur de fond
                        filled: true,
                      ),
                    ),
                  ),


                  SizedBox(height: 46.0),
                  Container(
                      height: 70,

                      child: FractionallySizedBox(
                        widthFactor: 0.85,
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text('Ajouter image',style: TextStyle(fontSize: 20)),
                        ),
                      )
                  ),
                  SizedBox(height: 30,),
                  Container(
                      height: 70,

                      child: FractionallySizedBox(
                        widthFactor: 0.85,
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text('Valider',style: TextStyle(fontSize: 20)),
                        ),
                      )
                  ),
                  SizedBox(height: 60,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
