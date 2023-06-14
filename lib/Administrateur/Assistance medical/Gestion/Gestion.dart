import 'package:flutter/material.dart';
import 'package:restotaff/Administrateur/Assistance%20medical/Gestion/Ajout/Ajout.dart';
import 'package:restotaff/Administrateur/Assistance%20medical/Gestion/Misa%20a%20jour/Update.dart';
import 'package:restotaff/Administrateur/Assistance%20medical/Gestion/Misa%20a%20jour/liste-personnel.dart';
import 'package:restotaff/Administrateur/Assistance%20medical/Gestion/Statistique/statistique.dart';
import 'package:restotaff/Administrateur/Assistance%20medical/Gestion/Suppression/delete.dart';


class gestionAssistance extends StatefulWidget {
  const gestionAssistance({Key? key}) : super(key: key);

  @override
  State<gestionAssistance> createState() => _gestionAssistanceState();
}

class _gestionAssistanceState extends State<gestionAssistance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestion-Assistance Medical",style: TextStyle(fontSize: 25),),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(width: 40,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ajoutAssistance()));
                },
                child: Container(
                  height: 200,
                  width: 390,

                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ajout personnel",style: TextStyle(fontSize: 30,color: Colors.white),)
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 40,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>deleteAssistance()));
                },
                child: Container(
                  height: 200,
                  width: 390,

                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Suppression personnel",style: TextStyle(fontSize: 30,color: Colors.white),)
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 40,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>listAssistance()));
                },
                child: Container(
                  height: 200,
                  width: 390,

                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Mise à jour personnel",style: TextStyle(fontSize: 30,color: Colors.white),)
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 40,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>statAssistance()));
                },
                child: Container(
                  height: 200,
                  width: 390,

                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Statisque",style: TextStyle(fontSize: 30,color: Colors.white),)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],

      ),
    );
  }
}
