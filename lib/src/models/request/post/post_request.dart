import 'package:json_annotation/json_annotation.dart';

part 'post_request.g.dart';

@JsonSerializable()
class PostRequest {
  int? categories;

  PostRequest({this.categories});

 factory PostRequest.fromJson(Map<String, dynamic> json)=>_$PostRequestFromJson(json);
  Map<String, dynamic> toJson() =>_$PostRequestToJson(this);
}