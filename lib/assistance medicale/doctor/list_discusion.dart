import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:restotaff/assistance%20medicale/doctor/page_tchat.dart';




class ListDiscussion extends StatefulWidget {
  const ListDiscussion({super.key});

  @override
  State<ListDiscussion> createState() => _ListDiscussionState();
}

// list des differents discussion
class _ListDiscussionState extends State<ListDiscussion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [
            _top(),
            _body(),
          ],
        ),
      ),
    );
  }

//  le header
  Widget _top() {
    return Container(
      padding: EdgeInsets.only(top: 30, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Discussion \n avec les patients',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }

// liste des messages
  Widget _body() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          color: Colors.white,
        ),
        child: ListView(
          padding: EdgeInsets.only(top: 35),
          physics: BouncingScrollPhysics(),
          children: [
            _itemChats(
              avatar: 'images/profil.jpg',
              name: 'Johnny Doe',
              chat: 'Bonjour Dr ben',
              time: '08.10',
            ),
            _itemChats(
              avatar: 'images/profil.jpg',
              name: 'Adrian',
              chat: 'Bonjour Dr ben',
              time: '03.19',
            ),
            _itemChats(
              avatar: 'images/profil.jpg',
              name: 'Fiona',
              chat: 'Bonjour Dr ben',
              time: '02.53',
            ),
            _itemChats(
              avatar: 'images/profil.jpg',
              name: 'Emma',
              chat: 'Bonjour Dr ben',
              time: '11.39',
            ),
            _itemChats(
              avatar: 'images/profil.jpg',
              name: 'Alexander',
              chat: 'Bonjour Dr ben',
              time: '00.09',
            ),
            _itemChats(
              avatar: 'images/profil.jpg',
              name: 'Alsoher',
              chat: 'Bonjour Dr ben',
              time: '00.09',
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemChats(
      {String avatar = '', name = '', chat = '', time = '00.00'}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ChatPage(),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 20),
        elevation: 0,
        child: Row(
          children: [
            Avatar(
              margin: EdgeInsets.only(right: 20),
              size: 60,
              image: avatar,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$name',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '$time',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$chat',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  final double size;
  final image;
  final EdgeInsets margin;
  Avatar({this.image, this.size = 50, this.margin = const EdgeInsets.all(0)});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
