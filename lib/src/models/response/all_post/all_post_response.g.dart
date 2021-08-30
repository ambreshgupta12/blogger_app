// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllPostResponse _$AllPostResponseFromJson(Map<String, dynamic> json) {
  return AllPostResponse(
    request: json['request'] as String?,
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AllPostResponseToJson(AllPostResponse instance) =>
    <String, dynamic>{
      'request': instance.request,
      'data': instance.data,
    };
