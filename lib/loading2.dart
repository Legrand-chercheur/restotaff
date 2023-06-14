import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:restotaff/acceuil0.dart';
import 'package:restotaff/Restaurant/facturation.dart';
import 'package:restotaff/assistance%20medicale/prototype.dart';
import 'package:restotaff/connexion-inscription/login-page.dart';

class loadingpage extends StatefulWidget {

  @override
  _loadingpageState createState() => _loadingpageState();
}

class _loadingpageState extends State<loadingpage> {
  @override
  void initState() {
    //set time to load the new page
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => pro()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Center(
            child: Lottie.asset('asset/loading.json'),
          ),
        )
    );
  }
}
