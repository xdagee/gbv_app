import 'package:flutter/material.dart';

import 'package:gbvapp/home.dart';
import 'package:gbvapp/home.2.dart';
import 'package:gbvapp/photo.emo.dart';
import 'package:gbvapp/video.emo.dart';

class Gbv extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gbv',
      theme: _kthemedata,
      home: HomeScren(),
      initialRoute: '/',
      onGenerateRoute: _getRoute,
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => MyHomePage(),
        '/home.2': (BuildContext context) => HomeScren(),
        '/photo.emo': (BuildContext context) => PhotoEmo(),
        '/video.emo': (BuildContext context) => VideoEmo(),
      },
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/') {
      return null;
    }
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => HomeScren(),
      fullscreenDialog: true,
    );
  }
}

final ThemeData _kthemedata = _buildThemeData();

ThemeData _buildThemeData() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith().apply(fontFamily: 'Nexa');
}
