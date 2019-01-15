import 'package:json_annotation/json_annotation.dart';

part 'google_model.g.dart';


@JsonSerializable()
class GoogleData extends Object{

  @JsonKey(name: 'rss',nullable: true)
  final Data data;

  GoogleData({this.data});

  factory GoogleData.fromJson(Map<String, dynamic> json)=>_$GoogleDataFromJson(json);



}


@JsonSerializable()
class Data extends Object{
  @JsonKey(nullable: true)
  final Channel channel;

 Data({this.channel});

  factory Data.fromJson(Map<String, dynamic> json)=>_$DataFromJson(json);



}

@JsonSerializable()
class Channel extends Object{
  @JsonKey(name: 'item',nullable: true)
  final List<NewsArticles> newsArticles;



  Channel({this.newsArticles});
  factory Channel.fromJson(Map<String, dynamic> json)=>_$ChannelFromJson(json);
}

@JsonSerializable()
class NewsArticles extends Object{
  @JsonKey(nullable: true)
  final Title title;
  @JsonKey(nullable: true)
  final Link link;
  @JsonKey(nullable: true)
  final Pubdate pubDate;
  @JsonKey(nullable: true)
  final Description description;


  NewsArticles(this.title,this.link,this.pubDate,this.description);

  factory NewsArticles.fromJson(Map<String, dynamic> json)=>_$NewsArticlesFromJson(json);


}

@JsonSerializable()
class Title extends Object{
  @JsonKey(name: '\$t')
  final String title;

  Title({this.title});
  factory Title.fromJson(Map<String, dynamic> json)=>_$TitleFromJson(json);

}
@JsonSerializable()
class Link extends Object{
  @JsonKey(name: '\$t',nullable: true)
  final String link;

  Link({this.link});
  factory Link.fromJson(Map<String, dynamic> json)=>_$LinkFromJson(json);
}
@JsonSerializable()
class Pubdate extends Object{
  @JsonKey(name: '\$t',nullable: true)
  final String pubdate;

  Pubdate({this.pubdate});
  factory Pubdate.fromJson(Map<String, dynamic> json)=>_$PubdateFromJson(json);
}
@JsonSerializable()
class Description extends Object{
  @JsonKey(name: '\$t',nullable: true)
  final String description;

  Description({this.description});
  factory Description.fromJson(Map<String, dynamic> json)=>_$DescriptionFromJson(json);
}



