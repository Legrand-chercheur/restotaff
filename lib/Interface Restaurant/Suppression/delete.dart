import 'package:flutter/material.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';

class deletePlat extends StatefulWidget {
  const deletePlat({Key? key}) : super(key: key);

  @override
  State<deletePlat> createState() => _deletePlatState();
}

class _deletePlatState extends State<deletePlat> {
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
        title: Text("Suppression Plat",style: TextStyle(fontSize: 25),),
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
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateAssistance()));
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
                                    image: AssetImage("asset/burger.jpg")
                                ),

                              ),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              height: 90,
                              width: 300,

                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Plat:",style: TextStyle(fontSize: 20)),
                                      SizedBox(width: 20,),
                                      Text("Burger",style: TextStyle(fontSize: 20)),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text("Description:",style: TextStyle(fontSize: 20),),
                                      SizedBox(width: 10,),
                                      Text("Pain+Viande",style: TextStyle(fontSize: 20)),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text("Prix:",style: TextStyle(fontSize: 20)),
                                      SizedBox(width: 20,),
                                      Text("4000 FCFA",style: TextStyle(fontSize: 20)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 30,),
                            IconButton(onPressed: (){
                              Dialogs.materialDialog(
                                  msg: 'Voulez-vous supprimer le plat?',

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
                            }, icon: Icon(Icons.cancel_outlined,size: 30,color: Colors.blue,))
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
