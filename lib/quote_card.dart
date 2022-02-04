import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  Quote quote;
  Function delete;

  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.redAccent),
            ),
            SizedBox(width: 10.0),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            ),
            SizedBox(
              height: 8.0,
            ),
            RaisedButton.icon(
                onPressed: () {
                  if (delete != null) {
                    delete();
                  }
                },
                icon: Icon(Icons.delete),
                label: Text("Delete Quote"))
          ],
        ),
      ),
    );
  }
}
