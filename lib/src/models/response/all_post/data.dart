
import 'package:json_annotation/json_annotation.dart';
part 'data.g.dart';

@JsonSerializable()

class Data {
  @JsonKey(name: 'post_title')
  String? postTitle;
  String? content;
  @JsonKey(name: 'image_url')
  bool? imageUrl;
  String? date;

  Data({this.postTitle, this.content, this.imageUrl, this.date});

 factory Data.fromJson(Map<String, dynamic> json) =>_$DataFromJson(json);

  Map<String, dynamic> toJson() =>_$DataToJson(this);


}
