import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:restotaff/assistance%20medicale/doctor/list_discusion.dart';
import 'package:restotaff/assistance%20medicale/doctor/patient_traite.dart';
import 'package:restotaff/assistance%20medicale/doctor/user_profil.dart';
import 'package:restotaff/assistance%20medicale/doctor/videoConference.dart';



import 'acceuil_medecin.dart';
import 'info_patient.dart';


class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  int _selectedIndex = 0;
  List _pages = [
    AcceuiPageMedecin(),
    PatientTraite(),
    ListDiscussion(),
    UserProfil(),
    VideoConference()
  ];

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// boton de navigation
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) => _onItemTapped(index),
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle:
              TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Acceuil'),
            BottomNavigationBarItem(
                icon: Icon(Icons.how_to_reg), label: 'Patients'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Messages'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_2), label: 'Compte'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'Appel'),
          ]),
    );
  }
}
