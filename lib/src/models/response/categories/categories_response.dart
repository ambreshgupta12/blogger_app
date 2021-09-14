
import 'package:json_annotation/json_annotation.dart';

part 'categories_response.g.dart';

@JsonSerializable()
class CategoriesResponse  {
  String? status;
  int? code;
  String? message;
  List<Result>? result;

  CategoriesResponse({this.status, this.code, this.message, this.result});

 factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>_$CategoriesResponseFromJson(json);
  Map<String, dynamic> toJson() =>_$CategoriesResponseToJson(this);
}

@JsonSerializable()
class Result {
  int? id;
  int? count;
  String? description;
  String? link;
  String? name;
  String? slug;


  Result(
      {this.id,
        this.count,
        this.description,
        this.link,
        this.name,
        this.slug
      });

 factory Result.fromJson(Map<String, dynamic> json) =>_$ResultFromJson(json);

  Map<String, dynamic> toJson()=>_$ResultToJson(this);
}

