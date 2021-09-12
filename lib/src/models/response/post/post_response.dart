


import 'package:json_annotation/json_annotation.dart';

part 'post_response.g.dart';

@JsonSerializable()
class PostResponse {
  String? status;
  int? code;
  String? message;
  List<Result>? result;

  PostResponse({this.status, this.code, this.message, this.result});
 factory PostResponse.fromJson(Map<String, dynamic> json) =>_$PostResponseFromJson(json);
  Map<String, dynamic> toJson() =>_$PostResponseToJson(this);
}

@JsonSerializable()
class Result {

  int? id;
  String? date;
  @JsonKey(name: 'date_gmt')
  String? dateGmt;
  Guid? guid;
  String? modified;
  @JsonKey(name: 'modified_gmt')
  String? modifiedGmt;
  String? slug;
  String? status;
  String? type;
  String? link;
  Guid? title;
  Content? content;
  Content? excerpt;
  int? author;

  bool? sticky;
  String? template;
  String? format;
  @JsonKey(name: 'yoast_head')
  String? yoastHead;

  Result(
      {this.id,
        this.date,
        this.dateGmt,
        this.guid,
        this.modified,
        this.modifiedGmt,
        this.slug,
        this.status,
        this.type,
        this.link,
        this.title,
        this.content,
        this.excerpt,
        this.author,
        this.sticky,
        this.template,
        this.format,
        this.yoastHead});

factory Result.fromJson(Map<String, dynamic> json) =>_$ResultFromJson(json);

  Map<String, dynamic> toJson()=>_$ResultToJson(this);
}

@JsonSerializable()
class Guid{
  String? rendered;

  Guid({this.rendered});

 factory Guid.fromJson(Map<String, dynamic> json)=>_$GuidFromJson(json);

  Map<String, dynamic> toJson() =>_$GuidToJson(this);

}

@JsonSerializable()
class Content {
  String? rendered;
  bool? protected;
  Content({this.rendered, this.protected});
 factory Content.fromJson(Map<String, dynamic> json) =>_$ContentFromJson(json);
  Map<String, dynamic> toJson() =>_$ContentToJson(this);
}



