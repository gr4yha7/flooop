import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  bool _isLoading = true; // state variable
  Timer _timer;

  _SplashScreenState() {
    _timer = Timer(new Duration(seconds: 5), () {
      setState(() {
        _isLoading = !_isLoading;
      });
      Navigator.pushNamed(context, '/home');
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // release the timer / release resources
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // width of the entire screen
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Image.asset(
            'assets/images/icon.png',
            width: 200,
          ),
          Center(
            child: _isLoading ? CircularProgressIndicator() : null // ternary operator expression
          )
        ],
      )
    );
  }
}