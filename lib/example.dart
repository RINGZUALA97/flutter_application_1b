import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      color: Colors.red,
      child: ElevatedButton(
          child: Container(child: Text('Go back to first Page')),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
//de
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class Choice {
  final String title;
  final IconData icon;
  const Choice({this.title, this.icon});
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Bus', icon: Icons.directions_bus),
  Choice(title: 'Bike', icon: Icons.directions_bike),
  Choice(title: 'Car', icon: Icons.directions_car),
];

class ChoicePage extends StatelessWidget {
  const ChoicePage({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenPage(),
    );
  }
}

class ScreenPage extends StatefulWidget {
  @override
  _ScreenPageState createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  String firstInput;
  String secondInput;
  final TextEditingController _firstenter = TextEditingController();
  final TextEditingController _secondenter = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: TextFormField(
                  controller: _firstenter,
                  decoration: InputDecoration(
                    labelText: 'Enter Name',
                  ),
                  onChanged: (value) {
                    firstInput = value;
                  },
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {},
                  child: Text('click'),
                ),
              ),
              Container(
                child: TextFormField(
                  controller: _secondenter,
                  decoration: InputDecoration(
                    labelText: 'Enter Name Again ',
                  ),
                  onChanged: (value) {
                    secondInput = value;
                  },
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    checking();
                  },
                  child: Text('click'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checking() {
    if (firstInput == secondInput) {
      print('SAME');
    } else {
      print('NOT ACCESSIBLE');
    }
  }
}

 
