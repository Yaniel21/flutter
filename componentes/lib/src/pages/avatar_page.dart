import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar
            (backgroundImage: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/A1S7TdAkX4L._AC_SX425_.png'),
            radius: 30.00,          
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              child: Text(' PAL '),
              backgroundColor: Colors.purple,
              
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/A1S7TdAkX4L._AC_SX425_.png'),
          placeholder:AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 100),
        ),
      ),
    );
  }
}