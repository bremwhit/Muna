import 'package:flutter/material.dart';
import 'quote.dart';
import 'QuoteCard.dart';

void main() => runApp(MaterialApp(home: Quotelist()));

class Quotelist extends StatefulWidget {
  @override
  _QuotelistState createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {
  /* LIST OF QUOTES HERE */
  List<Quote> quotes = [
    Quote(text: "quote one", author: "author one"),
    Quote(text: "quote two", author: "author two"),
    Quote(text: "quote three", author: "author three"),
    Quote(text: "quote four", author: "author four"),
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
        children: quotes
            .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState((){
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
