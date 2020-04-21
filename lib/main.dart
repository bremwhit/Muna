import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Muna',
            style: TextStyle(
              fontSize: 60.0,
              letterSpacing: 40,
              fontFamily: 'Jura',
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: Center(
          child: Text('Hello From \'body\''),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.red[600],
        ),
      ),
    ));
