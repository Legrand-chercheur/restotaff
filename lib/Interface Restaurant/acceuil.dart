import 'package:flutter/material.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';
import 'package:restotaff/Interface%20Restaurant/Ajout/ajout.dart';
import 'package:restotaff/Interface%20Restaurant/Profil/profil.dart';
import 'package:restotaff/Interface%20Restaurant/Suppression/delete.dart';
import 'package:restotaff/Interface%20Restaurant/gestion%20de%20commande/commande.dart';


class acceuilRestaurant extends StatefulWidget {
  const acceuilRestaurant({Key? key}) : super(key: key);

  @override
  State<acceuilRestaurant> createState() => _acceuilRestaurantState();
}

class _acceuilRestaurantState extends State<acceuilRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(50)
          ),
          child: Center(
            child: Text("R",style: TextStyle(fontSize: 40),),
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>profilRestaurant()));
          }, icon: Icon(Icons.person,size: 30,)),
          SizedBox(width: 20,),
          IconButton(onPressed: (){
            Dialogs.materialDialog(
                msg: 'Voulez-vous vous déconnecter?',

                color: Colors.white,
                context: context,
                actions: [

                  IconsOutlineButton(
                    onPressed: () {},
                    text: 'Annuler',
                    iconData: Icons.cancel_outlined,
                    textStyle: TextStyle(color: Colors.grey),
                    iconColor: Colors.grey,
                  ),
                  IconsButton(
                    onPressed: () {},
                    text: 'Valider',
                    iconData: Icons.offline_pin,
                    color: Colors.blue,
                    textStyle: TextStyle(color: Colors.white),
                    iconColor: Colors.white,
                  ),
                ]);
          }, icon: Icon(Icons.offline_bolt_outlined,size: 30))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Row(
            children: [
              SizedBox(width: 40,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AjoutPlat()));
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
                      Text("Ajout Plat",style: TextStyle(fontSize: 30,color: Colors.white),)
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>deletePlat()));
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
                      Text("Suppression Plat",style: TextStyle(fontSize: 30,color: Colors.white),)
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>commande()));
                },
                child: Container(
                  height: 200,
                  width: 390,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Gestion Commande",style: TextStyle(fontSize: 30,color: Colors.white),)
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
