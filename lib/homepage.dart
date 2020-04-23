import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        brightness: Brightness.dark,
      ),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  final TextStyle topMenuStyle = new TextStyle(
    fontFamily: 'Avenir next',
    fontSize: 15,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  final TextStyle buttonInfoStyle = new TextStyle(
    fontFamily: 'Avenir next',
    fontSize: 10,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
//        color: Colors.red,
        child: Center(
          child: ListView(
            children: <Widget>[
              Container(
                height: 430,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('images/starwars1.jpg'),
                  fit: BoxFit.fill,
                )),
                // color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage('images/netflix.png'),
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              'Series',
                              style: topMenuStyle,
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              'Films',
                              style: topMenuStyle,
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              'My List',
                              style: topMenuStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text('My List', style: buttonInfoStyle),
                        ],
                      ),
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
                    FlatButton(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.info,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text('Info', style: buttonInfoStyle),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              makePopularWidget('Popular on Netflix'),
              makePopularWidget('Trending now'),
              makeContinueWatching('Continue watching for Kharioki'),
            ],
          ),
        ),
      ),
    );
  }

  int counter = 0;

  Widget makePopularWidget(String title) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      height: 220,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[Text(title, style: topMenuStyle)],
            ),
          ),
          Container(
            height: 200,
            child: ListView(
              padding: EdgeInsets.all(3),
              scrollDirection: Axis.horizontal,
              children: makeContainers(),
            ),
          )
        ],
      ),
    );
  }

  Widget makeContinueWatching(String title) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      height: 220,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[Text(title, style: topMenuStyle)],
            ),
          ),
          Container(
            height: 200,
            child: ListView(
              padding: EdgeInsets.all(3),
              scrollDirection: Axis.horizontal,
              children: makeContinueContainers(),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> makeContainers() {
    List<Container> movieList = [];

    for (int i = 0; i < 6; i++) {
      counter++;
      movieList.add(
        Container(
          color: Colors.red,
          height: 200,
          padding: EdgeInsets.all(3),
          child: Image(
            image: AssetImage('images/' + counter.toString() + '.jpg'),
          ),
        ),
      );

      if (counter == 12) {
        counter = 0;
      }
    }

    return movieList;
  }

  List<Widget> makeContinueContainers() {
    List<Container> movieList = [];

    for (int i = 0; i < 6; i++) {
      counter++;
      movieList.add(Container(
        padding: EdgeInsets.all(2),
        height: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 140,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage('images/' + counter.toString() + '.jpg'),
                      fit: BoxFit.fitHeight)),
              child: Center(
                child: FlatButton(
                  child: Icon(
                    Icons.play_circle_outline,
                    size: 70,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              height: 30,
              margin: EdgeInsets.all(3),
              padding: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 25),
                    child: Text(
                      'S1:E' + i.toString(),
                      style: TextStyle(color: Color(0xffc1c1c1)),
                    ),
                  ),
                  Icon(Icons.info, size: 15, color: Color(0xffc1c1c1)),
                ],
              ),
            ),
          ],
        ),
      ));

      if (counter == 12) {
        counter = 0;
      }
    }

    return movieList;
  }
}
