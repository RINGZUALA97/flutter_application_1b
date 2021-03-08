import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('ROUTING'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '1st Page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('go next page'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SecondPage(data: 'hello there'),
                  ),
                );
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 200.0,
              width: 200.0,
              color: Colors.blue,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 200.0,
              width: 200.0,
              color: Colors.red,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 50,
        unselectedFontSize: 10,
        selectedFontSize: 20,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ('home'),
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: ('camera'),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ('search'),
              backgroundColor: Colors.green),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String data;
  SecondPage({
    Key key,
    @required this.data,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Previous Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              '2nd Page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('go next page'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(data: 'hello there'),
                  ),
                );
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              radius: (10),
              backgroundImage: AssetImage('images/tick.jpeg'),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  final String data;
  ThirdPage({
    Key key,
    @required this.data,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Previous Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              '3rd Page',
              style: TextStyle(fontSize: 50),
            ),
            Text('asd'),
            RaisedButton(
              child: Text('go next page'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LastPage(data: 'final page'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class LastPage extends StatelessWidget {
  final String data;
  LastPage({
    Key key,
    @required this.data,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Previous Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              '4rd Page',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              'last Page',
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
