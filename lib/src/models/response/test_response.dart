
import 'dart:convert';

TestResponse testResponseFromJson(String str) => TestResponse.fromJson(json.decode(str));

String testResponseToJson(TestResponse data) => json.encode(data.toJson());

class TestResponse {
    TestResponse({
        this.code,
        this.data,
        this.messege,
    });

    int? code;
    List<Datum>? data;
    String? messege;

    factory TestResponse.fromJson(Map<String, dynamic> json) => TestResponse(
        code: json["code"] == null ? null : json["code"],
        data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        messege: json["messege"] == null ? null : json["messege"],
    );

    Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "data": data == null ? null : List<dynamic>.from(data!.map((x) => x.toJson())),
        "messege": messege == null ? null : messege,
    };
}

class Datum {
    Datum({
        this.postTitle,
        this.content,
        this.imageUrl,
        this.date,
    });

    String? postTitle;
    String? content;
    String? imageUrl;
    String? date;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        postTitle: json["post_title"] == null ? null : json["post_title"],
        content: json["content"] == null ? null : json["content"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        date: json["date"] == null ? null : json["date"],
    );

    Map<String, dynamic> toJson() => {
        "post_title": postTitle == null ? null : postTitle,
        "content": content == null ? null : content,
        "image_url": imageUrl == null ? null : imageUrl,
        "date": date == null ? null : date,
    };
}
