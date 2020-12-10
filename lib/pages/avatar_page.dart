import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Avatar Page'), actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
                backgroundImage: NetworkImage('https://bit.ly/37PPNzk'),
                radius: 25.0),
          ),
          Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('MV'),
                backgroundColor: Colors.brown,
              ))
        ]),
        body: Center(
            child: FadeInImage(
          image: NetworkImage('https://picsum.photos/1280/1280'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        )));
  }
}
