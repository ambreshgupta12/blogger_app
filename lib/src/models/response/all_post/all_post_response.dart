import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
part 'all_post_response.g.dart';

@JsonSerializable()
class AllPostResponse {
  String? request;
  Data? data;

  AllPostResponse({this.request, this.data});

 factory AllPostResponse.fromJson(Map<String, dynamic> json) =>_$AllPostResponseFromJson(json);

  Map<String, dynamic> toJson() =>_$AllPostResponseToJson(this);
}



