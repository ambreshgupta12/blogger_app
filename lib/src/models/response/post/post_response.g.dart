// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostResponse _$PostResponseFromJson(Map<String, dynamic> json) {
  return PostResponse(
    status: json['status'] as String?,
    code: json['code'] as int?,
    message: json['message'] as String?,
    result: (json['result'] as List<dynamic>?)
        ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PostResponseToJson(PostResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
    id: json['id'] as int?,
    date: json['date'] as String?,
    dateGmt: json['date_gmt'] as String?,
    guid: json['guid'] == null
        ? null
        : Guid.fromJson(json['guid'] as Map<String, dynamic>),
    modified: json['modified'] as String?,
    modifiedGmt: json['modified_gmt'] as String?,
    slug: json['slug'] as String?,
    status: json['status'] as String?,
    type: json['type'] as String?,
    link: json['link'] as String?,
    title: json['title'] == null
        ? null
        : Guid.fromJson(json['title'] as Map<String, dynamic>),
    content: json['content'] == null
        ? null
        : Content.fromJson(json['content'] as Map<String, dynamic>),
    excerpt: json['excerpt'] == null
        ? null
        : Content.fromJson(json['excerpt'] as Map<String, dynamic>),
    author: json['author'] as int?,
    featuredMedia: json['featured_media'] as int?,
    commentStatus: json['comment_status'] as String?,
    pingStatus: json['ping_status'] as String?,
    sticky: json['sticky'] as bool?,
    template: json['template'] as String?,
    format: json['format'] as String?,
    meta: (json['meta'] as List<dynamic>?)?.map((e) => e as String).toList(),
    categories:
        (json['categories'] as List<dynamic>?)?.map((e) => e as int).toList(),
    tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
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
      'date': instance.date,
      'date_gmt': instance.dateGmt,
      'guid': instance.guid,
      'modified': instance.modified,
      'modified_gmt': instance.modifiedGmt,
      'slug': instance.slug,
      'status': instance.status,
      'type': instance.type,
      'link': instance.link,
      'title': instance.title,
      'content': instance.content,
      'excerpt': instance.excerpt,
      'author': instance.author,
      'featured_media': instance.featuredMedia,
      'comment_status': instance.commentStatus,
      'ping_status': instance.pingStatus,
      'sticky': instance.sticky,
      'template': instance.template,
      'format': instance.format,
      'meta': instance.meta,
      'categories': instance.categories,
      'tags': instance.tags,
      'yoast_head': instance.yoastHead,
      'yoast_head_json': instance.yoastHeadJson,
      '_links': instance.links,
    };

Guid _$GuidFromJson(Map<String, dynamic> json) {
  return Guid(
    rendered: json['rendered'] as String?,
  );
}

Map<String, dynamic> _$GuidToJson(Guid instance) => <String, dynamic>{
      'rendered': instance.rendered,
    };

Content _$ContentFromJson(Map<String, dynamic> json) {
  return Content(
    rendered: json['rendered'] as String?,
    protected: json['protected'] as bool?,
  );
}

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'rendered': instance.rendered,
      'protected': instance.protected,
    };

YoastHeadJson _$YoastHeadJsonFromJson(Map<String, dynamic> json) {
  return YoastHeadJson(
    title: json['title'] as String?,
    description: json['description'] as String?,
    robots: json['robots'] == null
        ? null
        : Robots.fromJson(json['robots'] as Map<String, dynamic>),
    canonical: json['canonical'] as String?,
    ogLocale: json['og_locale'] as String?,
    ogType: json['og_type'] as String?,
    ogTitle: json['og_title'] as String?,
    ogDescription: json['og_description'] as String?,
    ogUrl: json['og_url'] as String?,
    articlePublishedTime: json['article_published_time'] as String?,
    articleModifiedTime: json['article_modified_time'] as String?,
    ogImage: (json['og_image'] as List<dynamic>?)
        ?.map((e) => OgImage.fromJson(e as Map<String, dynamic>))
        .toList(),
    twitterCard: json['twitter_card'] as String?,
    twitterMisc: json['twitter_misc'] == null
        ? null
        : TwitterMisc.fromJson(json['twitter_misc'] as Map<String, dynamic>),
    schema: json['schema'] == null
        ? null
        : Schema.fromJson(json['schema'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$YoastHeadJsonToJson(YoastHeadJson instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'robots': instance.robots,
      'canonical': instance.canonical,
      'og_locale': instance.ogLocale,
      'og_type': instance.ogType,
      'og_title': instance.ogTitle,
      'og_description': instance.ogDescription,
      'og_url': instance.ogUrl,
      'article_published_time': instance.articlePublishedTime,
      'article_modified_time': instance.articleModifiedTime,
      'og_image': instance.ogImage,
      'twitter_card': instance.twitterCard,
      'twitter_misc': instance.twitterMisc,
      'schema': instance.schema,
    };

Robots _$RobotsFromJson(Map<String, dynamic> json) {
  return Robots(
    index: json['index'] as String?,
    follow: json['follow'] as String?,
    maxSnippet: json['max-snippet'] as String?,
    maxImagePreview: json['max-image-preview'] as String?,
    maxVideoPreview: json['max-video-preview'] as String?,
  );
}

Map<String, dynamic> _$RobotsToJson(Robots instance) => <String, dynamic>{
      'index': instance.index,
      'follow': instance.follow,
      'max-snippet': instance.maxSnippet,
      'max-image-preview': instance.maxImagePreview,
      'max-video-preview': instance.maxVideoPreview,
    };

OgImage _$OgImageFromJson(Map<String, dynamic> json) {
  return OgImage(
    url: json['url'] as String?,
  );
}

Map<String, dynamic> _$OgImageToJson(OgImage instance) => <String, dynamic>{
      'url': instance.url,
    };

TwitterMisc _$TwitterMiscFromJson(Map<String, dynamic> json) {
  return TwitterMisc(
    writtenBy: json['Written by'] as String?,
    estReadingTime: json['Est. reading time'] as String?,
  );
}

Map<String, dynamic> _$TwitterMiscToJson(TwitterMisc instance) =>
    <String, dynamic>{
      'Written by': instance.writtenBy,
      'Est. reading time': instance.estReadingTime,
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
    contentUrl: json['contentUrl'] as String?,
    width: json['width'] as int?,
    height: json['height'] as int?,
    caption: json['caption'] as String?,
    isPartOf: json['isPartOf'] == null
        ? null
        : Image.fromJson(json['isPartOf'] as Map<String, dynamic>),
    primaryImageOfPage: json['primaryImageOfPage'] == null
        ? null
        : Image.fromJson(json['primaryImageOfPage'] as Map<String, dynamic>),
    datePublished: json['datePublished'] as String?,
    dateModified: json['dateModified'] as String?,
    breadcrumb: json['breadcrumb'] == null
        ? null
        : Image.fromJson(json['breadcrumb'] as Map<String, dynamic>),
    itemListElement: (json['itemListElement'] as List<dynamic>?)
        ?.map((e) => ItemListElement.fromJson(e as Map<String, dynamic>))
        .toList(),
    author: json['author'] == null
        ? null
        : Image.fromJson(json['author'] as Map<String, dynamic>),
    headline: json['headline'] as String?,
    mainEntityOfPage: json['mainEntityOfPage'] == null
        ? null
        : Image.fromJson(json['mainEntityOfPage'] as Map<String, dynamic>),
    wordCount: json['wordCount'] as int?,
    commentCount: json['commentCount'] as int?,
    thumbnailUrl: json['thumbnailUrl'] as String?,
    articleSection: (json['articleSection'] as List<dynamic>?)
        ?.map((e) => e as String)
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
      'contentUrl': instance.contentUrl,
      'width': instance.width,
      'height': instance.height,
      'caption': instance.caption,
      'isPartOf': instance.isPartOf,
      'primaryImageOfPage': instance.primaryImageOfPage,
      'datePublished': instance.datePublished,
      'dateModified': instance.dateModified,
      'breadcrumb': instance.breadcrumb,
      'itemListElement': instance.itemListElement,
      'author': instance.author,
      'headline': instance.headline,
      'mainEntityOfPage': instance.mainEntityOfPage,
      'wordCount': instance.wordCount,
      'commentCount': instance.commentCount,
      'thumbnailUrl': instance.thumbnailUrl,
      'articleSection': instance.articleSection,
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
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$PotentialActionToJson(PotentialAction instance) =>
    <String, dynamic>{
      '@type': instance.type,
      'query-input': instance.queryInput,
      'name': instance.name,
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
    author: (json['author'] as List<dynamic>?)
        ?.map((e) => Author.fromJson(e as Map<String, dynamic>))
        .toList(),
    replies: (json['replies'] as List<dynamic>?)
        ?.map((e) => Author.fromJson(e as Map<String, dynamic>))
        .toList(),
    versionHistory: (json['version-history'] as List<dynamic>?)
        ?.map((e) => VersionHistory.fromJson(e as Map<String, dynamic>))
        .toList(),
    predecessorVersion: (json['predecessor-version'] as List<dynamic>?)
        ?.map((e) => PredecessorVersion.fromJson(e as Map<String, dynamic>))
        .toList(),
    wpAttachment: (json['wp:attachment'] as List<dynamic>?)
        ?.map((e) => Self.fromJson(e as Map<String, dynamic>))
        .toList(),
    wpTerm: (json['wp:term'] as List<dynamic>?)
        ?.map((e) => WpTerm.fromJson(e as Map<String, dynamic>))
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
      'author': instance.author,
      'replies': instance.replies,
      'version-history': instance.versionHistory,
      'predecessor-version': instance.predecessorVersion,
      'wp:attachment': instance.wpAttachment,
      'wp:term': instance.wpTerm,
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

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return Author(
    embeddable: json['embeddable'] as bool?,
    href: json['href'] as String?,
  );
}

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'embeddable': instance.embeddable,
      'href': instance.href,
    };

VersionHistory _$VersionHistoryFromJson(Map<String, dynamic> json) {
  return VersionHistory(
    count: json['count'] as int?,
    href: json['href'] as String?,
  );
}

Map<String, dynamic> _$VersionHistoryToJson(VersionHistory instance) =>
    <String, dynamic>{
      'count': instance.count,
      'href': instance.href,
    };

PredecessorVersion _$PredecessorVersionFromJson(Map<String, dynamic> json) {
  return PredecessorVersion(
    id: json['id'] as int?,
    href: json['href'] as String?,
  );
}

Map<String, dynamic> _$PredecessorVersionToJson(PredecessorVersion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'href': instance.href,
    };

WpTerm _$WpTermFromJson(Map<String, dynamic> json) {
  return WpTerm(
    taxonomy: json['taxonomy'] as String?,
    embeddable: json['embeddable'] as bool?,
    href: json['href'] as String?,
  );
}

Map<String, dynamic> _$WpTermToJson(WpTerm instance) => <String, dynamic>{
      'taxonomy': instance.taxonomy,
      'embeddable': instance.embeddable,
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
