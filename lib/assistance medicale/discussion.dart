import 'package:flutter/material.dart';


class discussion extends StatefulWidget {
  const discussion({Key? key}) : super(key: key);

  @override
  State<discussion> createState() => _discussionState();
}

class _discussionState extends State<discussion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Nom_destinataire"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/sms.jpg'),
              fit: BoxFit.cover,
            ),

        ),
      ),
    );
  }
}
