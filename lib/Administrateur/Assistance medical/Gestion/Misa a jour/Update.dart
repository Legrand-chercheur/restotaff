import 'package:flutter/material.dart';


class UpdateAssistance extends StatefulWidget {
  const UpdateAssistance({Key? key}) : super(key: key);

  @override
  State<UpdateAssistance> createState() => _UpdateAssistanceState();
}

class _UpdateAssistanceState extends State<UpdateAssistance> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Mise a jour - Personnel",style: TextStyle(fontSize: 25),),
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text("Assistance Medical",style: TextStyle(fontSize: 30),),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child:Text("Mise a jour du personnel",style: TextStyle(fontSize: 20)),
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
                        labelText: 'Prenom',
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
                  SizedBox(
                    height: 40,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.85,

                    child: TextFormField(

                      decoration: InputDecoration(
                        labelText: 'Age',
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
                        labelText: 'Spécialisation',
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
