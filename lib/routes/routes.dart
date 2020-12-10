import 'package:flutter/material.dart';
import 'package:flutter_uno/pages/alert_page.dart';
import 'package:flutter_uno/pages/animated_container_page.dart';
import 'package:flutter_uno/pages/avatar_page.dart';
import 'package:flutter_uno/pages/card_page.dart';
import 'package:flutter_uno/pages/home_page.dart';
import 'package:flutter_uno/pages/input_page.dart';
import 'package:flutter_uno/pages/listview_page.dart';
import 'package:flutter_uno/pages/slider_page.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/': (BuildContext context) => HomePage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'alert': (BuildContext context) => AlertPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListViewPage()
  };
}
