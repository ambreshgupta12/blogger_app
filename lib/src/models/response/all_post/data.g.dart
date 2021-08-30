// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    postTitle: json['post_title'] as String?,
    content: json['content'] as String?,
    imageUrl: json['image_url'] as bool?,
    date: json['date'] as String?,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'post_title': instance.postTitle,
      'content': instance.content,
      'image_url': instance.imageUrl,
      'date': instance.date,
    };
