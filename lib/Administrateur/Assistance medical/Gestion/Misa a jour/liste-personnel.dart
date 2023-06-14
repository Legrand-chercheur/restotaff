import 'package:flutter/material.dart';
import 'package:restotaff/Administrateur/Assistance%20medical/Gestion/Misa%20a%20jour/Update.dart';


class listAssistance extends StatefulWidget {
  const listAssistance({Key? key}) : super(key: key);

  @override
  State<listAssistance> createState() => _listAssistanceState();
}

class _listAssistanceState extends State<listAssistance> {
  @override
  final List Listelement = List.generate(10, (index) {
    return {
      "id": index,
    };
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste Personnel",style: TextStyle(fontSize: 25),),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateAssistance()));
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
                                      Text("Medecin:",style: TextStyle(fontSize: 20)),
                                      SizedBox(width: 20,),
                                      Text("Thomas Anderson",style: TextStyle(fontSize: 20)),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text("Specialité:",style: TextStyle(fontSize: 20),),
                                      SizedBox(width: 20,),
                                      Text("Paludisme",style: TextStyle(fontSize: 20)),
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
                            )
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
