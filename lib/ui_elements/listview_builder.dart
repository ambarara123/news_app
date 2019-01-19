import 'package:flutter/material.dart';
import 'package:news_app/json/google_model.dart';
import 'package:news_app/ui_elements/custom_chrome.dart';
import 'package:news_app/json/api.dart';

class BuildListView extends StatelessWidget {
  List<NewsArticles> articleList;

  BuildListView({this.articleList});

  @override
  Widget build(BuildContext context) {
    return /*articleList.length == 0
        ? Center(
            child: CircularProgressIndicator(),
          )
        :*/ ListView.builder(

            scrollDirection: Axis.vertical,
            itemCount: articleList == null ? 0 : articleList.length,
            itemBuilder: (BuildContext context, int i) {
              return InkWell(




                child: Card(

                  elevation: 5,
                  margin: EdgeInsets.all(7),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text(articleList[i].title.title.replaceAll("\\", "") ??
                            '',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.black)
                        ),
                        //  Image.network(articleList[i].link.link??'https://www.google.com/search?q=google+image&source=lnms&tbm=isch&sa=X&ved=0ahUKEwipub_0ktnfAhWLK48KHdXzAw0Q_AUIDigB&biw=1366&bih=614#'),
                        SizedBox(height: 10,),
                        Text(API
                                .getStringFromHtml(
                                    articleList[i].description.description)
                                .replaceAll('\\', "") ??
                            ''),
                        SizedBox(height: 10,),
                        Text(articleList[i].pubDate.pubdate ?? ''),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  ChromeWebView.launchURL(context, articleList[i].link.link);
                },
              );
            },
          );
  }
}
