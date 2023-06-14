import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:restotaff/Restaurant/Resto1.dart';

class resto0 extends StatefulWidget {
  const resto0({Key? key}) : super(key: key);

  @override
  State<resto0> createState() => _resto0State();
}

class _resto0State extends State<resto0> {
  void initState() {
    //set time to load the new page
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Resto1()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6e6e6),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Center(child: Lottie.asset('asset/food.json')),
      )
    );
  }
}
