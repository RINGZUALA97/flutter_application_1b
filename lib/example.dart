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
