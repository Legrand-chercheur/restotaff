import 'package:flutter/material.dart';
import 'package:restotaff/Restaurant/facturation1.dart';
import 'package:restotaff/Restaurant/panier.dart';

class facturation extends StatefulWidget {
  const facturation({Key? key}) : super(key: key);

  @override
  State<facturation> createState() => _facturationState();
}

class _facturationState extends State<facturation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              IconButton(onPressed: (){
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => panier()));

              }, icon: Icon(Icons.arrow_back,size: 30),),
            ],
          ),
          Container(
            child: Image(image: AssetImage('asset/Carte.png'),),
          ),
          SizedBox(height: 190,),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
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
                    SizedBox(width: 30,),
                    Container(
                      height: 240,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xffe6e6e6),
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Image(image: AssetImage('asset/airtel.png'),height: 100,),
                          SizedBox(height: 30,),
                          Container(
                            height: 60,
                            width: 120,
                            child: ElevatedButton(style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),onPressed: (){
                              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => facturation1()));

                            }, child: Text("Payer")),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 240,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xffe6e6e6),
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Image(image: AssetImage('asset/moov.png'),height: 100,),
                          SizedBox(height: 30,),
                          Container(
                            height: 60,
                            width: 120,
                            child: ElevatedButton(style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),onPressed: (){
                              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => facturation1()));

                            }, child: Text("Payer")),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
