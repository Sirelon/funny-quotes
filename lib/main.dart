import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:http/http.dart' as http;
import 'package:package_info/package_info.dart';
import 'package:simpsons_quotes/AdMob.dart';
import 'package:simpsons_quotes/ImageRotationWidget.dart';

import 'Copyright.dart';
import 'Quote.dart';
import 'QuoteWidget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Map<int, Widget> pagesHolder = Map();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const title = "Quotes from Simpsons™";
    AdMob().showBanner();

    return MaterialApp(
        title: title,
        theme: ThemeData(
          fontFamily: "simpsonfont",
          textTheme:
              Theme.of(context).textTheme.apply(
                  bodyColor: Colors.yellow,
                  displayColor: Colors.yellow,
              ),
          primarySwatch: Colors.blue,
        ),
        home: new HomePage(title: title));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () => _openAboutApp(context))
        ],
      ),
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("resources/background.jpg"),
                  fit: BoxFit.cover)),
          child: PageView.builder(
              itemBuilder: (context, index) => MainPage(index))),
    );
  }

  _openAboutApp(BuildContext context) async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    String appName = packageInfo.appName;
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;

    showAboutDialog(
        context: context,
        applicationName: appName,
        applicationVersion: version + buildNumber,
        applicationIcon: Image.asset("resources/ic_launcher.png"),
        children: [
          AboutAppDecription(),
          Copyright(),
          Text('All rights reserved (c) 2019')
        ]);
  }
}


class MainPage extends StatefulWidget {
  final int index;

  MainPage(this.index) : super(key: Key("$index"));

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with AutomaticKeepAliveClientMixin<MainPage> {
  late Future<Quote> _loadDataFuture;

  @override
  void initState() {
    _loadDataFuture = _loadData();
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
                print(snapshot.error);
                return Center(
                    child: Column(
                  children: [
                    new Text(
                      '${snapshot.error}',
                      style: TextStyle(color: Colors.red, fontSize: 25),
                    ),
                    MaterialButton(
                      child: Text("Retry"),
                      onPressed: _retry,
                    )
                  ],
                ));
              }
            default:
              return Text("");
          }
        });
  }

  Future<Quote> _loadData() {
    return http
        .get(Uri.parse('https://thesimpsonsquoteapi.glitch.me/quotes'))
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

  void _retry() {
    setState(() {
      _loadDataFuture = _loadData();
    });
  }
}

class DonutLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      ImageRotationWidget(Image.asset("resources/donutLoader.png"));
}
