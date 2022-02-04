

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';


void main() {
  runApp(MaterialApp(
    home: quateList(),

  ));
}

class quateList extends StatefulWidget {
  const quateList({Key? key}) : super(key: key);

  @override
  _quateListState createState() => _quateListState();
}

class _quateListState extends State<quateList> {


  List<Quote> quotes  = [
    Quote(text: "The purpose of our lives is to be happy", author: "Dalai Lama"),
    Quote(text: "Life is what happens when you’re busy  plans.", author: "John Lennon"),
    Quote(text: "Get busy living or get busy dying", author: "Stephen King")


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column( children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState(() {
              // print("nimefika");
              quotes.remove(quote);
            });
          },
      )
      ).toList()
      ),
    );
  }
}






