
import 'package:json_annotation/json_annotation.dart';

part 'categories_response.g.dart';

@JsonSerializable()
class CategoriesResponse {
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
  String? taxonomy;
  int? parent;
  List<String>? meta;
  @JsonKey(name: 'yoast_head')
  String? yoastHead;
  @JsonKey(name: 'yoast_head_json')
  YoastHeadJson? yoastHeadJson;
  @JsonKey(name: '_links')
  Links? links;

  Result(
      {this.id,
        this.count,
        this.description,
        this.link,
        this.name,
        this.slug,
        this.taxonomy,
        this.parent,
        this.meta,
        this.yoastHead,
        this.yoastHeadJson,
        this.links});

 factory Result.fromJson(Map<String, dynamic> json) =>_$ResultFromJson(json);

  Map<String, dynamic> toJson()=>_$ResultToJson(this);
}

@JsonSerializable()
class YoastHeadJson {
  String? title;
  Robots? robots;
  @JsonKey(name: 'og_locale')
  String? ogLocale;
  @JsonKey(name: 'og_type')
  String? ogType;
  @JsonKey(name: 'og_title')
  String? ogTitle;
  @JsonKey(name: 'og_url')
  String? ogUrl;
  @JsonKey(name: 'twitter_card')
  String? twitterCard;
  Schema? schema;

  YoastHeadJson(
      {this.title,
        this.robots,
        this.ogLocale,
        this.ogType,
        this.ogTitle,
        this.ogUrl,
        this.twitterCard,
        this.schema});

  factory YoastHeadJson.fromJson(Map<String, dynamic> json) =>_$YoastHeadJsonFromJson(json);

  Map<String, dynamic> toJson() =>_$YoastHeadJsonToJson(this);
}

@JsonSerializable()
class Robots {
  String? index;
  String? follow;
  Robots({this.index, this.follow});
 factory Robots.fromJson(Map<String, dynamic> json) =>_$RobotsFromJson(json);
  Map<String, dynamic> toJson() =>_$RobotsToJson(this);
}

@JsonSerializable()
class Schema {

  @JsonKey(name: '@context')
  String? context;
  @JsonKey(name: '@graph')
  List<Graph>? graph;
  Schema({this.context, this.graph});

 factory Schema.fromJson(Map<String, dynamic> json) =>_$SchemaFromJson(json);

  Map<String, dynamic> toJson() =>_$SchemaToJson(this);
}

@JsonSerializable()
class Graph {
  @JsonKey(name: '@type')
  String? type;
  @JsonKey(name: '@id')
  String? id;
  String? name;
  String? url;
  List<String>? sameAs;
  Logo? logo;
  Image? image;
  String? description;
  Image? publisher;
  List<PotentialAction>? potentialAction;
  String? inLanguage;
  Image? isPartOf;
  Image? breadcrumb;
  List<ItemListElement>? itemListElement;

  Graph(
      {this.type,
        this.id,
        this.name,
        this.url,
        this.sameAs,
        this.logo,
        this.image,
        this.description,
        this.publisher,
        this.potentialAction,
        this.inLanguage,
        this.isPartOf,
        this.breadcrumb,
        this.itemListElement});

 factory Graph.fromJson(Map<String, dynamic> json)=>_$GraphFromJson(json);
  Map<String, dynamic> toJson() =>_$GraphToJson(this);
}

@JsonSerializable()
class Logo {
  @JsonKey(name: '@type')
  String? type;
  @JsonKey(name: '@id')
  String? id;
  String? inLanguage;
  String? url;
  String? contentUrl;
  int? width;
  int? height;
  String? caption;

  Logo(
      {this.type,
        this.id,
        this.inLanguage,
        this.url,
        this.contentUrl,
        this.width,
        this.height,
        this.caption});

  factory Logo.fromJson(Map<String, dynamic> json) =>_$LogoFromJson(json);
  Map<String, dynamic> toJson() =>_$LogoToJson(this);
}


@JsonSerializable()
class Image {
  @JsonKey(name: '@id')
  String? id;

  Image({this.id});

 factory Image.fromJson(Map<String, dynamic> json) =>_$ImageFromJson(json);

  Map<String, dynamic> toJson() =>_$ImageToJson(this);
}


@JsonSerializable()
class PotentialAction {
  @JsonKey(name: '@type')
  String? type;
  //Target? target;
  @JsonKey(name: 'query-input')
  String? queryInput;

  PotentialAction({this.type, /*this.target,*/ this.queryInput});

 factory PotentialAction.fromJson(Map<String, dynamic> json) =>_$PotentialActionFromJson(json);

  Map<String, dynamic> toJson() =>_$PotentialActionToJson(this);
}


@JsonSerializable()
class Target {
  @JsonKey(name: '@type')
  String? type;
  String? urlTemplate;

  Target({this.type, this.urlTemplate});

 factory Target.fromJson(Map<String, dynamic> json) =>_$TargetFromJson(json);

  Map<String, dynamic> toJson() =>_$TargetToJson(this);
}



@JsonSerializable()
class ItemListElement {
  @JsonKey(name: '@type')
  String? type;
  int? position;
  String? name;
  String? item;

  ItemListElement({this.type, this.position, this.name, this.item});
 factory ItemListElement.fromJson(Map<String, dynamic> json)=>_$ItemListElementFromJson(json);
  Map<String, dynamic> toJson() =>_$ItemListElementToJson(this);
}


@JsonSerializable()
class Links {
  List<Self>? self;
  List<Self>? collection;
  List<Self>? about;
  @JsonKey(name: 'wp:post_type')
  List<Self>? wpPostType;
  List<Curies>? curies;
  Links({this.self, this.collection, this.about, this.wpPostType, this.curies});
 factory Links.fromJson(Map<String, dynamic> json)=>_$LinksFromJson(json);
  Map<String, dynamic> toJson()=>_$LinksToJson(this);
}



@JsonSerializable()
class Self {
  String? href;
  Self({this.href});
 factory Self.fromJson(Map<String, dynamic> json)=>_$SelfFromJson(json);
  Map<String, dynamic> toJson() =>_$SelfToJson(this);
}


@JsonSerializable()
class Curies {
  String? name;
  String? href;
  bool? templated;

  Curies({this.name, this.href, this.templated});

 factory Curies.fromJson(Map<String, dynamic> json)=>_$CuriesFromJson(json);
  Map<String, dynamic> toJson() =>_$CuriesToJson(this);
}