


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
  @JsonKey(name: 'featured_media')
  int? featuredMedia;
  @JsonKey(name: 'comment_status')
  String? commentStatus;
  @JsonKey(name: 'ping_status')
  String? pingStatus;
  bool? sticky;
  String? template;
  String? format;
  List<String>? meta;
  List<int>? categories;
  List<String>? tags;
  @JsonKey(name: 'yoast_head')
  String? yoastHead;
  @JsonKey(name: 'yoast_head_json')
  YoastHeadJson? yoastHeadJson;
  @JsonKey(name: '_links')
  Links? links;

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
        this.featuredMedia,
        this.commentStatus,
        this.pingStatus,
        this.sticky,
        this.template,
        this.format,
        this.meta,
        this.categories,
        this.tags,
        this.yoastHead,
        this.yoastHeadJson,
        this.links});

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

@JsonSerializable()
class YoastHeadJson {
  String? title;
  String? description;
  Robots? robots;
  String? canonical;
  @JsonKey(name: 'og_locale')
  String? ogLocale;
  @JsonKey(name: 'og_type')
  String? ogType;
  @JsonKey(name: 'og_title')
  String? ogTitle;
  @JsonKey(name: 'og_description')
  String? ogDescription;
  @JsonKey(name: 'og_url')
  String? ogUrl;
  @JsonKey(name: 'article_published_time')
  String? articlePublishedTime;
  @JsonKey(name: 'article_modified_time')
  String? articleModifiedTime;
  @JsonKey(name: 'og_image')
  List<OgImage>? ogImage;
  @JsonKey(name: 'twitter_card')
  String? twitterCard;
  @JsonKey(name: 'twitter_misc')
  TwitterMisc? twitterMisc;
  Schema? schema;

  YoastHeadJson(
      {this.title,
        this.description,
        this.robots,
        this.canonical,
        this.ogLocale,
        this.ogType,
        this.ogTitle,
        this.ogDescription,
        this.ogUrl,
        this.articlePublishedTime,
        this.articleModifiedTime,
        this.ogImage,
        this.twitterCard,
        this.twitterMisc,
        this.schema});

 factory YoastHeadJson.fromJson(Map<String, dynamic> json)=>_$YoastHeadJsonFromJson(json);

  Map<String, dynamic> toJson() =>_$YoastHeadJsonToJson(this);
}

@JsonSerializable()
class Robots {
  String? index;
  String? follow;
  @JsonKey(name: 'max-snippet')
  String? maxSnippet;
  @JsonKey(name: 'max-image-preview')
  String? maxImagePreview;
  @JsonKey(name: 'max-video-preview')
  String? maxVideoPreview;

  Robots(
      {this.index,
        this.follow,
        this.maxSnippet,
        this.maxImagePreview,
        this.maxVideoPreview});

 factory Robots.fromJson(Map<String, dynamic> json) =>_$RobotsFromJson(json);
  Map<String, dynamic> toJson()=>_$RobotsToJson(this);
}

@JsonSerializable()
class OgImage {
  String? url;

  OgImage({this.url});

 factory OgImage.fromJson(Map<String, dynamic> json) =>_$OgImageFromJson(json);

  Map<String, dynamic> toJson() =>_$OgImageToJson(this);
}

@JsonSerializable()
class TwitterMisc {
  @JsonKey(name: 'Written by')
  String? writtenBy;
  @JsonKey(name: 'Est. reading time')
  String? estReadingTime;
  TwitterMisc({this.writtenBy, this.estReadingTime});

 factory TwitterMisc.fromJson(Map<String, dynamic> json)=>_$TwitterMiscFromJson(json);

  Map<String, dynamic> toJson() =>_$TwitterMiscToJson(this);
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
  String? contentUrl;
  int? width;
  int? height;
  String? caption;
  Image? isPartOf;
  Image? primaryImageOfPage;
  String? datePublished;
  String? dateModified;
  Image? breadcrumb;
  List<ItemListElement>? itemListElement;
  Image? author;
  String? headline;
  Image? mainEntityOfPage;
  int? wordCount;
  int? commentCount;
  String? thumbnailUrl;
  List<String>? articleSection;

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
        this.contentUrl,
        this.width,
        this.height,
        this.caption,
        this.isPartOf,
        this.primaryImageOfPage,
        this.datePublished,
        this.dateModified,
        this.breadcrumb,
        this.itemListElement,
        this.author,
        this.headline,
        this.mainEntityOfPage,
        this.wordCount,
        this.commentCount,
        this.thumbnailUrl,
        this.articleSection});

 factory Graph.fromJson(Map<String, dynamic> json) =>_$GraphFromJson(json);

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
  String? name;

  PotentialAction({this.type, /*this.target,*/ this.queryInput, this.name});

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

 factory ItemListElement.fromJson(Map<String, dynamic> json) =>_$ItemListElementFromJson(json);

  Map<String, dynamic> toJson() =>_$ItemListElementToJson(this);
}

@JsonSerializable()
class Links {
  List<Self>? self;
  List<Self>? collection;
  List<Self>? about;
  List<Author>? author;
  List<Author>? replies;
  @JsonKey(name: 'version-history')
  List<VersionHistory>? versionHistory;
  @JsonKey(name: 'predecessor-version')
  List<PredecessorVersion>? predecessorVersion;
  @JsonKey(name: 'wp:attachment')
  List<Self>? wpAttachment;
  @JsonKey(name: 'wp:term')
  List<WpTerm>? wpTerm;
  List<Curies>? curies;

  Links(
      {this.self,
        this.collection,
        this.about,
        this.author,
        this.replies,
        this.versionHistory,
        this.predecessorVersion,
        this.wpAttachment,
        this.wpTerm,
        this.curies});

 factory Links.fromJson(Map<String, dynamic> json) =>_$LinksFromJson(json);

  Map<String, dynamic> toJson() =>_$LinksToJson(this);
}

@JsonSerializable()
class Self {
  String? href;
  Self({this.href});
 factory  Self.fromJson(Map<String, dynamic> json) =>_$SelfFromJson(json);
  Map<String, dynamic> toJson() =>_$SelfToJson(this);
}

@JsonSerializable()
class Author {
  bool? embeddable;
  String? href;
  Author({this.embeddable, this.href});
  factory Author.fromJson(Map<String, dynamic> json) =>_$AuthorFromJson(json);
  Map<String, dynamic> toJson() =>_$AuthorToJson(this);
}

@JsonSerializable()
class VersionHistory {
  int? count;
  String? href;

  VersionHistory({this.count, this.href});
  factory VersionHistory.fromJson(Map<String, dynamic> json) =>_$VersionHistoryFromJson(json);

  Map<String, dynamic> toJson() =>_$VersionHistoryToJson(this);
}

@JsonSerializable()
class PredecessorVersion {
  int? id;
  String? href;
  PredecessorVersion({this.id, this.href});
  factory PredecessorVersion.fromJson(Map<String, dynamic> json) =>_$PredecessorVersionFromJson(json);
  Map<String, dynamic> toJson() =>_$PredecessorVersionToJson(this);
}

@JsonSerializable()
class WpTerm {
  String? taxonomy;
  bool? embeddable;
  String? href;

  WpTerm({this.taxonomy, this.embeddable, this.href});

 factory WpTerm.fromJson(Map<String, dynamic> json) =>_$WpTermFromJson(json);

  Map<String, dynamic> toJson() =>_$WpTermToJson(this);
}

@JsonSerializable()
class Curies {
  String? name;
  String? href;
  bool? templated;

  Curies({this.name, this.href, this.templated});

 factory Curies.fromJson(Map<String, dynamic> json) =>_$CuriesFromJson(json);

  Map<String, dynamic> toJson() =>_$CuriesToJson(this);
}
