import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: ElevatedButton(
          child: Text('Go back to first Page'),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
