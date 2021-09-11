// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponse _$CategoriesResponseFromJson(Map<String, dynamic> json) {
  return CategoriesResponse(
    status: json['status'] as String?,
    code: json['code'] as int?,
    message: json['message'] as String?,
    result: (json['result'] as List<dynamic>?)
        ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CategoriesResponseToJson(CategoriesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
    id: json['id'] as int?,
    count: json['count'] as int?,
    description: json['description'] as String?,
    link: json['link'] as String?,
    name: json['name'] as String?,
    slug: json['slug'] as String?,
    taxonomy: json['taxonomy'] as String?,
    parent: json['parent'] as int?,
    meta: (json['meta'] as List<dynamic>?)?.map((e) => e as String).toList(),
    yoastHead: json['yoast_head'] as String?,
    yoastHeadJson: json['yoast_head_json'] == null
        ? null
        : YoastHeadJson.fromJson(
            json['yoast_head_json'] as Map<String, dynamic>),
    links: json['_links'] == null
        ? null
        : Links.fromJson(json['_links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'description': instance.description,
      'link': instance.link,
      'name': instance.name,
      'slug': instance.slug,
      'taxonomy': instance.taxonomy,
      'parent': instance.parent,
      'meta': instance.meta,
      'yoast_head': instance.yoastHead,
      'yoast_head_json': instance.yoastHeadJson,
      '_links': instance.links,
    };

YoastHeadJson _$YoastHeadJsonFromJson(Map<String, dynamic> json) {
  return YoastHeadJson(
    title: json['title'] as String?,
    robots: json['robots'] == null
        ? null
        : Robots.fromJson(json['robots'] as Map<String, dynamic>),
    ogLocale: json['og_locale'] as String?,
    ogType: json['og_type'] as String?,
    ogTitle: json['og_title'] as String?,
    ogUrl: json['og_url'] as String?,
    twitterCard: json['twitter_card'] as String?,
    schema: json['schema'] == null
        ? null
        : Schema.fromJson(json['schema'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$YoastHeadJsonToJson(YoastHeadJson instance) =>
    <String, dynamic>{
      'title': instance.title,
      'robots': instance.robots,
      'og_locale': instance.ogLocale,
      'og_type': instance.ogType,
      'og_title': instance.ogTitle,
      'og_url': instance.ogUrl,
      'twitter_card': instance.twitterCard,
      'schema': instance.schema,
    };

Robots _$RobotsFromJson(Map<String, dynamic> json) {
  return Robots(
    index: json['index'] as String?,
    follow: json['follow'] as String?,
  );
}

Map<String, dynamic> _$RobotsToJson(Robots instance) => <String, dynamic>{
      'index': instance.index,
      'follow': instance.follow,
    };

Schema _$SchemaFromJson(Map<String, dynamic> json) {
  return Schema(
    context: json['@context'] as String?,
    graph: (json['@graph'] as List<dynamic>?)
        ?.map((e) => Graph.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$SchemaToJson(Schema instance) => <String, dynamic>{
      '@context': instance.context,
      '@graph': instance.graph,
    };

Graph _$GraphFromJson(Map<String, dynamic> json) {
  return Graph(
    type: json['@type'] as String?,
    id: json['@id'] as String?,
    name: json['name'] as String?,
    url: json['url'] as String?,
    sameAs:
        (json['sameAs'] as List<dynamic>?)?.map((e) => e as String).toList(),
    logo: json['logo'] == null
        ? null
        : Logo.fromJson(json['logo'] as Map<String, dynamic>),
    image: json['image'] == null
        ? null
        : Image.fromJson(json['image'] as Map<String, dynamic>),
    description: json['description'] as String?,
    publisher: json['publisher'] == null
        ? null
        : Image.fromJson(json['publisher'] as Map<String, dynamic>),
    potentialAction: (json['potentialAction'] as List<dynamic>?)
        ?.map((e) => PotentialAction.fromJson(e as Map<String, dynamic>))
        .toList(),
    inLanguage: json['inLanguage'] as String?,
    isPartOf: json['isPartOf'] == null
        ? null
        : Image.fromJson(json['isPartOf'] as Map<String, dynamic>),
    breadcrumb: json['breadcrumb'] == null
        ? null
        : Image.fromJson(json['breadcrumb'] as Map<String, dynamic>),
    itemListElement: (json['itemListElement'] as List<dynamic>?)
        ?.map((e) => ItemListElement.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$GraphToJson(Graph instance) => <String, dynamic>{
      '@type': instance.type,
      '@id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'sameAs': instance.sameAs,
      'logo': instance.logo,
      'image': instance.image,
      'description': instance.description,
      'publisher': instance.publisher,
      'potentialAction': instance.potentialAction,
      'inLanguage': instance.inLanguage,
      'isPartOf': instance.isPartOf,
      'breadcrumb': instance.breadcrumb,
      'itemListElement': instance.itemListElement,
    };

Logo _$LogoFromJson(Map<String, dynamic> json) {
  return Logo(
    type: json['@type'] as String?,
    id: json['@id'] as String?,
    inLanguage: json['inLanguage'] as String?,
    url: json['url'] as String?,
    contentUrl: json['contentUrl'] as String?,
    width: json['width'] as int?,
    height: json['height'] as int?,
    caption: json['caption'] as String?,
  );
}

Map<String, dynamic> _$LogoToJson(Logo instance) => <String, dynamic>{
      '@type': instance.type,
      '@id': instance.id,
      'inLanguage': instance.inLanguage,
      'url': instance.url,
      'contentUrl': instance.contentUrl,
      'width': instance.width,
      'height': instance.height,
      'caption': instance.caption,
    };

Image _$ImageFromJson(Map<String, dynamic> json) {
  return Image(
    id: json['@id'] as String?,
  );
}

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      '@id': instance.id,
    };

PotentialAction _$PotentialActionFromJson(Map<String, dynamic> json) {
  return PotentialAction(
    type: json['@type'] as String?,
    queryInput: json['query-input'] as String?,
  );
}

Map<String, dynamic> _$PotentialActionToJson(PotentialAction instance) =>
    <String, dynamic>{
      '@type': instance.type,
      'query-input': instance.queryInput,
    };

Target _$TargetFromJson(Map<String, dynamic> json) {
  return Target(
    type: json['@type'] as String?,
    urlTemplate: json['urlTemplate'] as String?,
  );
}

Map<String, dynamic> _$TargetToJson(Target instance) => <String, dynamic>{
      '@type': instance.type,
      'urlTemplate': instance.urlTemplate,
    };

ItemListElement _$ItemListElementFromJson(Map<String, dynamic> json) {
  return ItemListElement(
    type: json['@type'] as String?,
    position: json['position'] as int?,
    name: json['name'] as String?,
    item: json['item'] as String?,
  );
}

Map<String, dynamic> _$ItemListElementToJson(ItemListElement instance) =>
    <String, dynamic>{
      '@type': instance.type,
      'position': instance.position,
      'name': instance.name,
      'item': instance.item,
    };

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links(
    self: (json['self'] as List<dynamic>?)
        ?.map((e) => Self.fromJson(e as Map<String, dynamic>))
        .toList(),
    collection: (json['collection'] as List<dynamic>?)
        ?.map((e) => Self.fromJson(e as Map<String, dynamic>))
        .toList(),
    about: (json['about'] as List<dynamic>?)
        ?.map((e) => Self.fromJson(e as Map<String, dynamic>))
        .toList(),
    wpPostType: (json['wp:post_type'] as List<dynamic>?)
        ?.map((e) => Self.fromJson(e as Map<String, dynamic>))
        .toList(),
    curies: (json['curies'] as List<dynamic>?)
        ?.map((e) => Curies.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'self': instance.self,
      'collection': instance.collection,
      'about': instance.about,
      'wp:post_type': instance.wpPostType,
      'curies': instance.curies,
    };

Self _$SelfFromJson(Map<String, dynamic> json) {
  return Self(
    href: json['href'] as String?,
  );
}

Map<String, dynamic> _$SelfToJson(Self instance) => <String, dynamic>{
      'href': instance.href,
    };

Curies _$CuriesFromJson(Map<String, dynamic> json) {
  return Curies(
    name: json['name'] as String?,
    href: json['href'] as String?,
    templated: json['templated'] as bool?,
  );
}

Map<String, dynamic> _$CuriesToJson(Curies instance) => <String, dynamic>{
      'name': instance.name,
      'href': instance.href,
      'templated': instance.templated,
    };
