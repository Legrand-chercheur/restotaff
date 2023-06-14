import 'package:flutter/material.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';


class commande extends StatefulWidget {
  const commande({Key? key}) : super(key: key);

  @override
  State<commande> createState() => _commandeState();
}

class _commandeState extends State<commande> {
  final List Listelement = List.generate(10, (index) {
    return {
      "id": index,
    };
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste des commandes",style: TextStyle(fontSize: 25),),
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
                      height: 170,
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
                            height: 160,
                            width: 370,

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
                                    Text("Quantité:",style: TextStyle(fontSize: 20)),
                                    SizedBox(width: 20,),
                                    Text("3",style: TextStyle(fontSize: 20)),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    SizedBox(width: 280,),
                                    ElevatedButton(
                                      onPressed: () {

                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.blue,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Text('Livrer',style: TextStyle(fontSize: 20)),
                                    ),
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
