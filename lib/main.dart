import 'dart:convert';
import 'dart:ui'

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const title = 'Simpons Quotes';
    var textColor = TextStyle(color: Colors.yellow);
    final titleTheme = Theme
        .of(context)
        .textTheme
        .title
        .merge(textColor);
    final display1 = Theme
        .of(context)
        .textTheme
        .display1
        .merge(textColor);
    final display3 = Theme
        .of(context)
        .textTheme
        .display3
        .merge(textColor);
    return MaterialApp(
      title: title,
      theme: ThemeData(
        fontFamily: "simpsonfont",
        textTheme: TextTheme(
            title: titleTheme, display3: display3, display1: display1),
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text(title)),
          body:
          Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("resources/background.jpg"),
                      fit: BoxFit.cover)),
              child: MainPage())),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Future<Quote> _loadDataFuture;

  @override
  void initState() {
    _loadDataFuture = _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _loadDataFuture,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return new CircularProgressIndicator();
            case ConnectionState.done:
              if (snapshot.hasData) {
                return new QuoteWidget(quote: snapshot.data);
              } else {
                return new Text(
                  '${snapshot.error}',
                  style: TextStyle(color: Colors.red),
                );
              }
              break;
            default:
              return Text("");
          }
        });
  }

  Future<Quote> _loadData() {
    return http
        .get('https://thesimpsonsquoteapi.glitch.me/quotes')
        .then((response) {
      if (response.statusCode == 200) {
        print(response.body);
        List<dynamic> jsonArray = jsonDecode(response.body);

        return Quote.fromJson(jsonArray.first);
      } else {
        throw Exception(response.reasonPhrase);
      }
    });
  }
}

class QuoteWidget extends StatelessWidget {
  Quote quote;

  QuoteWidget({Key key, @required this.quote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme
        .of(context)
        .textTheme
        .display1
        .merge(TextStyle(
      backgroundColor: Color(0x9A42A5F5),
    ));
    return Stack(
//      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(quote.image),
        Text(
          quote.quote,
          textAlign: TextAlign.center,
          style: textStyle,
        )
      ],
    );
  }
}

class Quote {
  String quote;
  String character;
  String image;
  String characterDirection;

  @override
  String toString() =>
      'Quote{quote: $quote, character: $character, image: $image, characterDirection: $characterDirection}';

  Quote({this.quote, this.character, this.image, this.characterDirection});

  Quote.fromJson(Map<String, dynamic> json) {
    quote = json['quote'];
    character = json['character'];
    image = json['image'];
    characterDirection = json['characterDirection'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['quote'] = this.quote;
    data['character'] = this.character;
    data['image'] = this.image;
    data['characterDirection'] = this.characterDirection;
    return data;
  }
}
