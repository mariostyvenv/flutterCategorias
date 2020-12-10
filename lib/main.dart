import 'package:flutter/material.dart';
import 'package:flutter_uno/pages/alert_page.dart';
import 'package:flutter_uno/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'),
          const Locale('es', 'ES'),
        ],
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: '/',
        routes: routes(),
        onGenerateRoute: (RouteSettings settings) {
          print('Ruta llamada: ${settings.name}');
          return MaterialPageRoute(
              builder: (BuildContext context) => AlertPage());
        });
  }
}
