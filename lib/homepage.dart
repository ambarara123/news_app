import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/json/google_model.dart';
import 'dart:convert' as jsons;
import 'dart:async';
import 'package:news_app/json/model_data.dart';
import 'json/api.dart';
import 'ui_elements/listview_builder.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:xml2json/xml2json.dart';
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:html2md/html2md.dart' as html2md;




class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

//https://newsapi.org/v2/everything?q=bitcoin&from=2018-11-23&sortBy=publishedAt&apiKey=4481df42394b40bf9017bec578e4c0e3
class _HomeState extends State<HomePage> {
  JsonList jsonList;
  List<NewsArticles> articleList = List<NewsArticles>();
  List<NewsArticles> newsArticles = List<NewsArticles>();
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
  new GlobalKey<RefreshIndicatorState>();



  Future<Null> _getData() {

   return API.getData(API.GOOGLE_India).then((response) {
   //  _refreshIndicatorKey.currentState?.show();
      setState(() {
       // print(response.body);
        Xml2Json myTransformer = Xml2Json();

        // Parse a simple XML string
        myTransformer.parse(response.body);
        var jsonData = myTransformer.toGData();

        Map newsMap = jsons.json.decode(jsonData);
        articleList = GoogleData.fromJson(newsMap).data.channel.newsArticles;



      });
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _refreshIndicatorKey.currentState.show());

    _getData();



  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _getData,
      key: _refreshIndicatorKey,
      child: BuildListView(
            articleList: articleList,
          ),
    );



  }

  @override
  void dispose() {

    super.dispose();


  }
}
