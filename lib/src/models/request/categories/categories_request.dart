
import 'package:json_annotation/json_annotation.dart';

part 'categories_request.g.dart';

@JsonSerializable()
class CategoriesRequest  {
  String? exclude;

  CategoriesRequest({this.exclude});

  factory CategoriesRequest.fromJson(Map<String, dynamic> json) =>_$CategoriesRequestFromJson(json);
  Map<String, dynamic> toJson() =>_$CategoriesRequestToJson(this);
}



