// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostResponse _$PostResponseFromJson(Map<String, dynamic> json) {
  return PostResponse(
    status: json['status'] as String?,
    code: json['code'] as int?,
    message: json['message'] as String?,
    result: (json['result'] as List<dynamic>?)
        ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PostResponseToJson(PostResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
    id: json['id'] as int?,
    date: json['date'] as String?,
    dateGmt: json['date_gmt'] as String?,
    guid: json['guid'] == null
        ? null
        : Guid.fromJson(json['guid'] as Map<String, dynamic>),
    modified: json['modified'] as String?,
    modifiedGmt: json['modified_gmt'] as String?,
    slug: json['slug'] as String?,
    status: json['status'] as String?,
    type: json['type'] as String?,
    link: json['link'] as String?,
    title: json['title'] == null
        ? null
        : Guid.fromJson(json['title'] as Map<String, dynamic>),
    content: json['content'] == null
        ? null
        : Content.fromJson(json['content'] as Map<String, dynamic>),
    excerpt: json['excerpt'] == null
        ? null
        : Content.fromJson(json['excerpt'] as Map<String, dynamic>),
    author: json['author'] as int?,
    sticky: json['sticky'] as bool?,
    template: json['template'] as String?,
    format: json['format'] as String?,
    yoastHead: json['yoast_head'] as String?,
  );
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'date_gmt': instance.dateGmt,
      'guid': instance.guid,
      'modified': instance.modified,
      'modified_gmt': instance.modifiedGmt,
      'slug': instance.slug,
      'status': instance.status,
      'type': instance.type,
      'link': instance.link,
      'title': instance.title,
      'content': instance.content,
      'excerpt': instance.excerpt,
      'author': instance.author,
      'sticky': instance.sticky,
      'template': instance.template,
      'format': instance.format,
      'yoast_head': instance.yoastHead,
    };

Guid _$GuidFromJson(Map<String, dynamic> json) {
  return Guid(
    rendered: json['rendered'] as String?,
  );
}

Map<String, dynamic> _$GuidToJson(Guid instance) => <String, dynamic>{
      'rendered': instance.rendered,
    };

Content _$ContentFromJson(Map<String, dynamic> json) {
  return Content(
    rendered: json['rendered'] as String?,
    protected: json['protected'] as bool?,
  );
}

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'rendered': instance.rendered,
      'protected': instance.protected,
    };
