import 'dart:async';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _numeros = new List();
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregarDiez();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        //_agregarDiez();
        fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Listas')),
        body: Stack(children: [_crearLista(), _crearLoading()]));
  }

  Widget _crearLista() {
    return RefreshIndicator(
        onRefresh: obtenerPagina1,
        child: ListView.builder(
            controller: _scrollController,
            itemCount: _numeros.length,
            itemBuilder: (BuildContext context, int key) {
              final image = _numeros[key];
              return FadeInImage(
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  image: NetworkImage(
                      'https://picsum.photos/1024/1024/?image=$image'));
            }));
  }

  Future<Null> obtenerPagina1() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _numeros.clear();
      _ultimoItem++;
      _agregarDiez();
    });
    return Future.delayed(duration);
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              SizedBox(height: 15.0)
            ],
          )
        ],
      );
    } else {
      return Container();
    }
  }

  void _agregarDiez() {
    for (var i = 1; i < 10; i++) {
      _ultimoItem++;
      _numeros.add(_ultimoItem);
    }

    setState(() {});
  }

  Future<Null> fetchData() async {
    setState(() {
      _isLoading = true;
    });

    final duration = new Duration(seconds: 2);
    new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(microseconds: 250));
    _agregarDiez();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
