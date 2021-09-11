import 'package:json_annotation/json_annotation.dart';

part 'post_request.g.dart';

@JsonSerializable()
class PostRequest {
  String? slug;
  String? status;
  int? categories;

  PostRequest({this.slug, this.status, this.categories});

 factory PostRequest.fromJson(Map<String, dynamic> json)=>_$PostRequestFromJson(json);
  Map<String, dynamic> toJson() =>_$PostRequestToJson(this);
}