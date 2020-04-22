import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(home: Quotelist()));

class Quotelist extends StatefulWidget {
  @override
  _QuotelistState createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {
  List<Quote> quotes = [
    Quote(text: "quote one", author: "author one"),
    Quote(text: "quote two", author: "author two"),
    Quote(text: "quote three", author: "author three"),
  ];

  Widget quoteTempalte(quote) {
    return Card(

    );
  }

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
        children: quotes
            .map((quote) => Text('${quote.text} - ${quote.author}'))
            .toList(),
      ),
    );
  }
}
