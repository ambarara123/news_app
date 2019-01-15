// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoogleData _$GoogleDataFromJson(Map<String, dynamic> json) {
  return GoogleData(
      data: json['rss'] == null
          ? null
          : Data.fromJson(json['rss'] as Map<String, dynamic>));
}

Map<String, dynamic> _$GoogleDataToJson(GoogleData instance) =>
    <String, dynamic>{'rss': instance.data};

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
      channel: json['channel'] == null
          ? null
          : Channel.fromJson(json['channel'] as Map<String, dynamic>));
}

Map<String, dynamic> _$DataToJson(Data instance) =>
    <String, dynamic>{'channel': instance.channel};

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return Channel(
      newsArticles: (json['item'] as List)
          ?.map((e) => e == null
              ? null
              : NewsArticles.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ChannelToJson(Channel instance) =>
    <String, dynamic>{'item': instance.newsArticles};

NewsArticles _$NewsArticlesFromJson(Map<String, dynamic> json) {
  return NewsArticles(
      json['title'] == null
          ? null
          : Title.fromJson(json['title'] as Map<String, dynamic>),
      json['link'] == null
          ? null
          : Link.fromJson(json['link'] as Map<String, dynamic>),
      json['pubDate'] == null
          ? null
          : Pubdate.fromJson(json['pubDate'] as Map<String, dynamic>),
      json['description'] == null
          ? null
          : Description.fromJson(json['description'] as Map<String, dynamic>));
}

Map<String, dynamic> _$NewsArticlesToJson(NewsArticles instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'pubDate': instance.pubDate,
      'description': instance.description
    };

Title _$TitleFromJson(Map<String, dynamic> json) {
  return Title(title: json[r'$t'] as String);
}

Map<String, dynamic> _$TitleToJson(Title instance) =>
    <String, dynamic>{r'$t': instance.title};

Link _$LinkFromJson(Map<String, dynamic> json) {
  return Link(link: json[r'$t'] as String);
}

Map<String, dynamic> _$LinkToJson(Link instance) =>
    <String, dynamic>{r'$t': instance.link};

Pubdate _$PubdateFromJson(Map<String, dynamic> json) {
  return Pubdate(pubdate: json[r'$t'] as String);
}

Map<String, dynamic> _$PubdateToJson(Pubdate instance) =>
    <String, dynamic>{r'$t': instance.pubdate};

Description _$DescriptionFromJson(Map<String, dynamic> json) {
  return Description(description: json[r'$t'] as String);
}

Map<String, dynamic> _$DescriptionToJson(Description instance) =>
    <String, dynamic>{r'$t': instance.description};
