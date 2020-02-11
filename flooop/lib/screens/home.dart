import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Colors.black87,
        actions: <Widget>[
          Icon(Icons.favorite_border),
          SizedBox(width: 15.0),
          Icon(Icons.filter_list),
          SizedBox(width: 5.0),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.library_music),
              title: Text('Music'),
            ),
          ],
        )
      ),
    );
  }
}