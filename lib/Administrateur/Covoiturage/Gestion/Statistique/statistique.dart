import 'package:flutter/material.dart';

class statCovoiturage extends StatefulWidget {
  const statCovoiturage({Key? key}) : super(key: key);

  @override
  State<statCovoiturage> createState() => _statCovoiturageState();
}

class _statCovoiturageState extends State<statCovoiturage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text("Statistique"),
        )
    );
  }
}
