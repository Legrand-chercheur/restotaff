import 'package:flutter/material.dart';
import 'package:restotaff/Administrateur/Covoiturage/Gestion/menugestion.dart';
import 'package:restotaff/Administrateur/Covoiturage/Suivi/suivi.dart';
import 'package:restotaff/Administrateur/Restaurant/Suivi/suivi.dart';


class menuCovoiturage extends StatefulWidget {
  const menuCovoiturage({Key? key}) : super(key: key);

  @override
  State<menuCovoiturage> createState() => _menuCovoiturageState();
}

class _menuCovoiturageState extends State<menuCovoiturage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Covoiturage",style: TextStyle(fontSize: 25),),

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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>suiviCovoiturage()));
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
                      Text("Suivi",style: TextStyle(fontSize: 30,color: Colors.white),)
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 70,),
          Row(
            children: [
              SizedBox(width: 40,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>gestionCovoiturage()));
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
                      Text("Gestion",style: TextStyle(fontSize: 30,color: Colors.white),)
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
