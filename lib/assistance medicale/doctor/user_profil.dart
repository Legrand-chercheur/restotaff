import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class UserProfil extends StatefulWidget {
  const UserProfil({super.key});

  @override
  State<UserProfil> createState() => _UserProfilState();
}

class _UserProfilState extends State<UserProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            color: Colors.white,
          )
        ],
        title: Text('Mon compte'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 20),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              border: Border.all(width: 4, color: Colors.white),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    color: Colors.black.withOpacity(0.2)),
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('asset/profil.jpeg'))),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Column(
                            children: [
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: 'NOM',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    hintText: 'kelly',
                                    hintStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: 'Prenom',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    hintText: 'kelly',
                                    hintStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: 'Specialité',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    hintText: 'dentiste',
                                    hintStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: 'ville',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    hintText: 'Libreville',
                                    hintStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
