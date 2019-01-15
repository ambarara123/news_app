import 'package:flutter/material.dart';
import 'package:news_app/json/google_model.dart';
import 'dart:convert'as jsons;
import 'package:news_app/json/model_data.dart';
import 'json/api.dart';
import 'ui_elements/listview_builder.dart';
import 'package:xml2json/xml2json.dart';

class SportsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SportsState();
  }
}



class _SportsState extends State<SportsPage> {
  List<NewsArticles> articleList = List<NewsArticles>();
  JsonList jsonList;

  _getData() {
    API.getData(API.GOOGLE_Cricket).then((response) {
      setState(() {
        print(response.body);
        Xml2Json myTransformer = Xml2Json();

        // Parse a simple XML string
        myTransformer.parse(response.body);
        var jsonData = myTransformer.toGData();

        Map newsMap = jsons.json.decode(jsonData);
        articleList = GoogleData.fromJson(newsMap).data.channel.newsArticles;
      });
      print(articleList.length);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: BuildListView(articleList: articleList)
    );
  }
}
