import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Icon(
                  Icons.delete,
                  color: Colors.black,
                  ),
                onPressed: delete,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
