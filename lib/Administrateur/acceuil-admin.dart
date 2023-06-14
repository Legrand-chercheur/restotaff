import 'package:flutter/material.dart';
import 'package:restotaff/Administrateur/Assistance%20medical/menu.dart';
import 'package:restotaff/Administrateur/Covoiturage/menu.dart';
import 'package:restotaff/Administrateur/Restaurant/menu.dart';

class admin extends StatefulWidget {
  const admin({Key? key}) : super(key: key);

  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
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
            child: Text("A",style: TextStyle(fontSize: 40),),
          ),
        ),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.settings,size: 30,)),
          SizedBox(width: 20,),
          IconButton(onPressed: (){

          }, icon: Icon(Icons.offline_bolt_outlined,size: 30))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text("Services",style: TextStyle(fontSize: 30),),
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 40,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>menuAssistance()));
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
                      Text("Assistance Medicale",style: TextStyle(fontSize: 30,color: Colors.white),)
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>menuRestaurant()));
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
                      Text("Restaurant",style: TextStyle(fontSize: 30,color: Colors.white),)
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>menuCovoiturage()));
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
                      Text("Covoiturage",style: TextStyle(fontSize: 30,color: Colors.white),)
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
