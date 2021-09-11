// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostRequest _$PostRequestFromJson(Map<String, dynamic> json) {
  return PostRequest(
    slug: json['slug'] as String?,
    status: json['status'] as String?,
    categories: json['categories'] as int?,
  );
}

Map<String, dynamic> _$PostRequestToJson(PostRequest instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'status': instance.status,
      'categories': instance.categories,
    };
