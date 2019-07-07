import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:simpons_quotes/ImageRotationWidget.dart';

import 'Quote.dart';
import 'QuoteWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Map<int, Widget> pagesHolder = Map();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const title = 'Simpons Quotes';
    var textColor = TextStyle(color: Colors.yellow);
    final titleTheme = Theme.of(context).textTheme.title.merge(textColor);
    final display1 = Theme.of(context).textTheme.display1.merge(textColor);
    final display3 = Theme.of(context).textTheme.display3.merge(textColor);
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
          body: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("resources/background.jpg"),
                      fit: BoxFit.cover)),
              child: PageView.builder(
                  itemBuilder: (context, index) => MainPage(index))),
        ));
  }
}

class MainPage extends StatefulWidget {
  int index;

  MainPage(this.index) : super(key: Key("$index"));

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with AutomaticKeepAliveClientMixin<MainPage> {
  Future<Quote> _loadDataFuture;

  @override
  void initState() {
    _loadDataFuture = _loadData();
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _loadDataFuture,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return DonutLoader();
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

class DonutLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      ImageRotationWidget(Image.asset("resources/donutLoader.png"));
}
