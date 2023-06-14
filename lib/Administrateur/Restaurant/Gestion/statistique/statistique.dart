import 'package:flutter/material.dart';


class statRestaurant extends StatefulWidget {
  const statRestaurant({Key? key}) : super(key: key);

  @override
  State<statRestaurant> createState() => _statRestaurantState();
}

class _statRestaurantState extends State<statRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text("Statistique"),
        )
    );
  }
}
