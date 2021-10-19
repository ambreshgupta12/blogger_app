// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostRequest _$PostRequestFromJson(Map<String, dynamic> json) {
  return PostRequest(
    categories: json['categories'] as int?,
    page: json['page'] as int?,
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$PostRequestToJson(PostRequest instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'page': instance.page,
      'status': instance.status,
    };
