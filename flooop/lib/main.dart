import 'package:flutter/material.dart';
import 'package:flooop/screens/home.dart';
import 'package:flooop/screens/splashscreen.dart';

void main() => runApp(MaterialApp(
  title: 'Vito',
  home: SplashScreen(),
  routes: {
    '/home': (BuildContext context) => HomeScreen()
  },
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    iconTheme: IconThemeData(color: Colors.black87),
    scaffoldBackgroundColor: Colors.white,
  ),
));
