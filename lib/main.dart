import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Quotelist()));

class Quotelist extends StatefulWidget {
  @override
  _QuotelistState createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {
  List<String> quotes = [
    'quote one',
    'quote two',
    'quote three',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Quote Cards'),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: Column(
          children: quotes.map((quote) => Text(quote)).toList(),
        ));
  }
}
