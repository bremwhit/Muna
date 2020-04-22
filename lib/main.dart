import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TestApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Muna',
            style: TextStyle(
                fontFamily: 'Jura',
                fontWeight: FontWeight.bold,
                letterSpacing: 25,
                fontSize: 40),
          ),
          centerTitle: true,
          backgroundColor: Colors.green[300],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Hello World!'),
            FlatButton(
              onPressed: () {
                print('button pressed');
              },
              color: Colors.amber,
              child: Text('Button'),
            ),
            Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30),
              child: Text('Inside Container'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Floating button pressed');
          },
          child: Text('BTN'),
          backgroundColor: Colors.green[300],
        ),
      ),
    );
  }
}
