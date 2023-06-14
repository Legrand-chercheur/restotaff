import 'package:flutter/material.dart';
import 'package:restotaff/Administrateur/Restaurant/Gestion/Mise%20a%20jour/update.dart';


class updateRestaurant extends StatefulWidget {
  const updateRestaurant({Key? key}) : super(key: key);

  @override
  State<updateRestaurant> createState() => _updateRestaurantState();
}

class _updateRestaurantState extends State<updateRestaurant> {
  final List Listelement = List.generate(10, (index) {
    return {
      "id": index,
    };
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mise a jour Restaurant",style: TextStyle(fontSize: 25),),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F5F3),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: ListView.builder(
                  itemCount: Listelement.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>misajourRestaurant()));
                    },
                    child: Card(
                      elevation: 6,
                      margin: EdgeInsets.all(10),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("asset/bantu.jpg")
                                ),

                              ),
                            ),
                            SizedBox(width: 30,),
                            Container(
                              height: 90,
                              width: 300,

                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Restaurant:",style: TextStyle(fontSize: 20)),
                                      SizedBox(width: 20,),
                                      Text("Bantu",style: TextStyle(fontSize: 20)),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text("Adresse:",style: TextStyle(fontSize: 20),),
                                      SizedBox(width: 20,),
                                      Text("Louis",style: TextStyle(fontSize: 20)),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text("Contact:",style: TextStyle(fontSize: 20)),
                                      SizedBox(width: 20,),
                                      Text("090912345",style: TextStyle(fontSize: 20)),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
