import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

const List<Map<String, dynamic>> promos = [
  {
    'title': 'Get free delivery on firts order',
    'color': Colors.red,
    'image_url': 'assets/images/promo1.png'
  },
  {
    'title': 'Buy one get one free',
    'color': Colors.yellow,
    'image_url': 'assets/images/promo2.png'
  },
  {
    'title': 'Buy one for your girl, get two for your mom',
    'color': Colors.blueAccent,
    'image_url': 'assets/images/promo3.png'
  },
];

class _HomeScreenState extends State<HomeScreen> {

  // Widget buildPromoCard (List<Map<String, dynamic>> items) {
  //   Widget card;
  //   items.forEach((_, item) {
  //     card = Container(
  //       decoration: BoxDecoration(
  //         color: item.color
  //       ),
  //     );
  //   });
  //   return card;
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        actions: <Widget>[
          Icon(Icons.favorite_border),
          SizedBox(width: 15.0),
          Icon(Icons.tune),
          SizedBox(width: 5.0),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Calabar, Canaan City',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.black.withOpacity(0.6),
                fontSize: 32.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              height: 50,
              child: TextField(
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.3),
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 24
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 15.0),
                  hintText: 'Search for Restaurant',
                  border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Promo",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(0.6),
                fontSize: 30,
              )
            ),
            SizedBox(height: 30),
            Container(
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(-1, 5)
                        )
                      ]
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0, top: 20.0),
                            child: Text(
                              'Get free\ndelivery on\nnext order',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Positioned(
                            top: 150,
                            left: -12,
                            child: Image.asset(
                              'assets/images/pizza.png',
                              width: 200,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            )
          ],
          
        ),
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
      )),
    );
  }
}
