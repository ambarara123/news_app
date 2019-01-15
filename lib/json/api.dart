import 'dart:async';
import 'package:http/http.dart'as http;
import 'package:html/parser.dart' show parse;

class API{
 static var CRICKET= 'https://newsapi.org/v2/everything?q=cricket&apiKey=4481df42394b40bf9017bec578e4c0e3';
 static var INDIA = "https://newsapi.org/v2/top-headlines?country=in&apiKey=4481df42394b40bf9017bec578e4c0e3";
  static var GOOGLE_Cricket = "https://news.google.com/rss/search?q=cricket&hl=en-IN&gl=IN&ceid=IN:en";
 static var GOOGLE_India = "https://news.google.com/rss/search?q=india&hl=en-IN&gl=IN&ceid=IN:en";

 static Future getData(var URL) {

    return http.get(URL);
  }


  static String getStringFromHtml(String html){
    var htmlcoverter = parse(html);
    String parsedString = parse(htmlcoverter.body.text).documentElement.text;
    //String markDown = html2md.convert(htmlcoverter[''],styleOptions: { 'headingStyle': 'atx' });
    //print(parsedString);



    return parsedString;

  }


}