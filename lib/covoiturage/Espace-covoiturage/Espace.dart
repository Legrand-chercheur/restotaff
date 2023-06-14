import 'package:flutter/material.dart';
import 'package:restotaff/covoiturage/Espace-covoiturage/Espace%20conducteur/Reservation/reservation-trajet.dart';
import 'package:restotaff/covoiturage/Espace-covoiturage/Espace%20passager/Trajet/liste-trajets.dart';


class espace extends StatefulWidget {
  const espace({Key? key}) : super(key: key);

  @override
  State<espace> createState() => _espaceState();
}

class _espaceState extends State<espace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  color: Color(0xffb80000),
                ),
              ),
            ],
          ),
          SizedBox(height: 40,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffe6e6e6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              height: 986,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Center(
                    child:Text("Espace",style: TextStyle(fontSize: 30,)),
                  ),
                  SizedBox(height: 150,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>trajetpassager()));

                    },
                    child: Container(
                      width: 440,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0,5),
                                color: Colors.grey,
                                blurRadius: 7
                            )
                          ],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [

                          SizedBox(width: 20,),
                          Container(
                            child: Column(
                              children: [

                                SizedBox(height: 40,),
                                Row(
                                  children: [
                                    Text("Passager",style: TextStyle(fontSize: 30),),

                                  ],
                                ),
                                SizedBox(height: 70,),
                                Row(
                                  children: [
                                    Text("SMS ",style: TextStyle(fontSize: 30)),

                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 145,),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('asset/us.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(90)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 90,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>reservationtrajet()));

                    },
                    child: Container(
                      width: 440,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0,5),
                                color: Colors.grey,
                                blurRadius: 7
                            )
                          ],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [

                          SizedBox(width: 20,),
                          Container(
                            child: Column(
                              children: [

                                SizedBox(height: 40,),
                                Row(
                                  children: [
                                    Text("Conducteur",style: TextStyle(fontSize: 30),),

                                  ],
                                ),
                                SizedBox(height: 70,),
                                Row(
                                  children: [
                                    Text("SMS ",style: TextStyle(fontSize: 30)),

                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 125,),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('asset/us.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(90)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
