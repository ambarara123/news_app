import 'package:json_annotation/json_annotation.dart';

part 'model_data.g.dart';

@JsonSerializable()
class JsonList extends Object {
 /* @JsonKey(nullable: true)
   final String status;
  @JsonKey(nullable: true)
   final double totalResults;*/
  @JsonKey(nullable: true)
   final List<Articles> articles;

   JsonList(/*this.status, this.totalResults,*/ this.articles);

   factory JsonList.fromJson(Map<String, dynamic> json)=>_$JsonListFromJson(json);

}

@JsonSerializable()
class Articles extends Object{
   @JsonKey(nullable: true)
   final Source source;
   @JsonKey(nullable: true)
   final String author;
   @JsonKey(nullable: true)
   final String title;
   @JsonKey(nullable: true)
   final String url;
   @JsonKey(nullable: true)
   final String urlToImage;
   @JsonKey(nullable: true)
   final String publishedAt;
   @JsonKey(nullable: true)
   final String content;

   Articles(this.source, this.author, this.title, this.url, this.urlToImage,
       this.publishedAt, this.content);

   factory Articles.fromJson(Map<String, dynamic> json)=>_$ArticlesFromJson(json);


}


@JsonSerializable()
class Source extends Object{
  @JsonKey(nullable: true)
  final String id;
  @JsonKey(nullable: true)
  final String name;

   Source(this.id, this.name);

   factory Source.fromJson(Map<String, dynamic> json)=>_$SourceFromJson(json);


}