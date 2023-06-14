import 'package:flutter/material.dart';


class suiviRestaurant extends StatefulWidget {
  const suiviRestaurant({Key? key}) : super(key: key);

  @override
  State<suiviRestaurant> createState() => _suiviRestaurantState();
}

class _suiviRestaurantState extends State<suiviRestaurant> {
  final List Listelement = List.generate(10, (index) {
    return {
      "id": index,
    };
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Suivi",style: TextStyle(fontSize: 25),),
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
                  itemBuilder: (context, index) => Card(
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
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Text(Listelement[index]["id"].toString()),
                          ),
                          SizedBox(width: 30,),
                          Container(
                            height: 90,
                            width: 300,

                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Client:",style: TextStyle(fontSize: 20)),
                                    SizedBox(width: 20,),
                                    Text("Thomas Anderson",style: TextStyle(fontSize: 20)),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text("Commande:",style: TextStyle(fontSize: 20),),
                                    SizedBox(width: 20,),
                                    Text("Burger",style: TextStyle(fontSize: 20)),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text("Restaurant:",style: TextStyle(fontSize: 20)),
                                    SizedBox(width: 20,),
                                    Text("Bantu",style: TextStyle(fontSize: 20)),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
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
