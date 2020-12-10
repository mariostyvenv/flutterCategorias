import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(title: Text('Card Page')),
            body: ListView(children: <Widget>[
              _cardTipo1(),
              SizedBox(height: 30.0),
              _cardTipo2(),
              SizedBox(height: 30.0),
              _cardTipo1(),
              SizedBox(height: 30.0),
              _cardTipo2(),
              SizedBox(height: 30.0),
              _cardTipo1(),
              SizedBox(height: 30.0),
              _cardTipo2(),
              SizedBox(height: 30.0),
              _cardTipo1(),
              SizedBox(height: 30.0),
              _cardTipo2(),
              SizedBox(height: 30.0),
              _cardTipo1(),
              SizedBox(height: 30.0),
              _cardTipo2(),
              SizedBox(height: 30.0),
            ], padding: EdgeInsets.all(10))));
  }

  Widget _cardTipo1() {
    return Card(
        elevation: 5.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.photo_album, color: Colors.blue),
                title: Text('Soy el titulo de esta tarjeta'),
                subtitle: Text(
                    'Soy un texto extremandamente largo y necesito mucho espacio para poder caber, por lo tanto lo tanto estaré pendiente de los margenes permitidos')),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              FlatButton(onPressed: () => {}, child: Text('Cancelar')),
              FlatButton(onPressed: () => {}, child: Text('Ok'))
            ])
          ],
        ));
  }

  Widget _cardTipo2() {
    final card = Container(
        child: Column(children: <Widget>[
      FadeInImage(
          image: NetworkImage('https://bit.ly/2VNlEuz'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover),
      Container(
          padding: EdgeInsets.all(10.0),
          child: Text('No tengo Idea de que poner'))
    ]));

    return Container(
        child:
            ClipRRect(borderRadius: BorderRadius.circular(30.0), child: card),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4.0,
                  spreadRadius: 2.0,
                  offset: Offset(2.0, 3.0))
            ]));
  }
}
