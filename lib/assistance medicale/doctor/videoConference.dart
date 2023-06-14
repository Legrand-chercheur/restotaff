import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class VideoConference extends StatefulWidget {
  const VideoConference({super.key});

  @override
  State<VideoConference> createState() => _VideoConferenceState();
}

class _VideoConferenceState extends State<VideoConference> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F3),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 230,
                    // child: Image.asset('images/sante.jpg'),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    margin: EdgeInsets.all(20)),
                Container(
                    height: 230,
                    // child: Image.asset('images/sante.jpg'),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    margin: EdgeInsets.all(20)),
                // Container(
                //     height: 200,
                //     // child: Image.asset('images/sante.jpg'),
                //     padding: EdgeInsets.all(20),
                //     decoration: BoxDecoration(
                //         // shape: BoxShape.circle,
                //         color: Colors.blue,
                //         borderRadius: BorderRadius.all(Radius.circular(20))),
                //     margin: EdgeInsets.all(20)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
