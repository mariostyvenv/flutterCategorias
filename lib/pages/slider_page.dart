import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 200.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              _crearCheckBox(),
              _crearSwitch(),
              Expanded(child: _crearImagen())
            ],
          )),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigo,
        label: 'Tamaño de la imagen',
        divisions: 20,
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged: (_bloquearCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
              });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://picsum.photos/2024/2024'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (bool value) {
        setState(() {
          _bloquearCheck = value;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (bool value) {
        setState(() {
          _bloquearCheck = value;
        });
      },
    );
  }
}
