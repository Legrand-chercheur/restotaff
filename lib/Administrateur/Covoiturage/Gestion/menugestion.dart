import 'package:flutter/material.dart';
import 'package:restotaff/Administrateur/Covoiturage/Gestion/Ajout/ajout.dart';
import 'package:restotaff/Administrateur/Covoiturage/Gestion/Mise%20a%20jour/liste.dart';
import 'package:restotaff/Administrateur/Covoiturage/Gestion/Statistique/statistique.dart';
import 'package:restotaff/Administrateur/Covoiturage/Gestion/Suppression/delete.dart';


class gestionCovoiturage extends StatefulWidget {
  const gestionCovoiturage({Key? key}) : super(key: key);

  @override
  State<gestionCovoiturage> createState() => _gestionCovoiturageState();
}

class _gestionCovoiturageState extends State<gestionCovoiturage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestion-Covoiturage",style: TextStyle(fontSize: 25),),

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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ajoutCovoiturage()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>deleteCovoiturage()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>listeCovoiturage()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>statCovoiturage()));
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
