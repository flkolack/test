import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  @override
  Widget build(BuildContext context) {

    List<Quote> quotes = [
      Quote(author: 'Me 1' , text: 'Quote 1'),
      Quote(author: 'Me 2' , text: 'Quote 2'),
      Quote(author: 'Me 3' , text: 'Quote 3'),
    ];

    Widget quoteTemplate(quote){
      return Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
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
              SizedBox(height: 6.0,),
              Text(
                  quote.author,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[800],
                  )
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        )
    );
  }
}

