import 'package:flutter/material.dart';

class statAssistance extends StatefulWidget {
  const statAssistance({Key? key}) : super(key: key);

  @override
  State<statAssistance> createState() => _statAssistanceState();
}

class _statAssistanceState extends State<statAssistance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Statistique"),
      )
    );
  }
}
