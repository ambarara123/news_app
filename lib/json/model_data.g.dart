// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonList _$JsonListFromJson(Map<String, dynamic> json) {
  return JsonList((json['articles'] as List)
      ?.map((e) =>
          e == null ? null : Articles.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$JsonListToJson(JsonList instance) =>
    <String, dynamic>{'articles': instance.articles};

Articles _$ArticlesFromJson(Map<String, dynamic> json) {
  return Articles(
      json['source'] == null
          ? null
          : Source.fromJson(json['source'] as Map<String, dynamic>),
      json['author'] as String,
      json['title'] as String,
      json['url'] as String,
      json['urlToImage'] as String,
      json['publishedAt'] as String,
      json['content'] as String);
}

Map<String, dynamic> _$ArticlesToJson(Articles instance) => <String, dynamic>{
      'source': instance.source,
      'author': instance.author,
      'title': instance.title,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt,
      'content': instance.content
    };

Source _$SourceFromJson(Map<String, dynamic> json) {
  return Source(json['id'] as String, json['name'] as String);
}

Map<String, dynamic> _$SourceToJson(Source instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
