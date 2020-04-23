import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  TextStyle topMenuStyle = new TextStyle(
      fontFamily: 'Avenir next',
      fontSize: 15,
      color: Colors.white,
      fontWeight: FontWeight.w100);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: ListView(
        children: <Widget>[
          Container(
            height: 500,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Series',
                        style: topMenuStyle,
                      ),
                      Text(
                        'Films',
                        style: topMenuStyle,
                      ),
                      Text(
                        'My List',
                        style: topMenuStyle,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {},
                      ),
                      FlatButton(
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                            ),
                            Text(
                              'Play',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.info),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
