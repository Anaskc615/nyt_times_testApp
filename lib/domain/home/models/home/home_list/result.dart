import 'package:json_annotation/json_annotation.dart';

import 'multimedia.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  String? section;
  String? subsection;
  String? title;
  String? abstract;
  String? url;
  String? uri;
  String? byline;
  @JsonKey(name: 'item_type')
  String? itemType;
  @JsonKey(name: 'updated_date')
  String? updatedDate;
  @JsonKey(name: 'created_date')
  String? createdDate;
  @JsonKey(name: 'published_date')
  String? publishedDate;
  @JsonKey(name: 'material_type_facet')
  String? materialTypeFacet;
  String? kicker;
  @JsonKey(name: 'des_facet')
  List<String>? desFacet;
  @JsonKey(name: 'org_facet')
  List<String>? orgFacet;
  @JsonKey(name: 'per_facet')
  List<String>? perFacet;
  @JsonKey(name: 'geo_facet')
  List<dynamic>? geoFacet;
  List<Multimedia>? multimedia;
  @JsonKey(name: 'short_url')
  String? shortUrl;

  Result({
    this.section,
    this.subsection,
    this.title,
    this.abstract,
    this.url,
    this.uri,
    this.byline,
    this.itemType,
    this.updatedDate,
    this.createdDate,
    this.publishedDate,
    this.materialTypeFacet,
    this.kicker,
    this.desFacet,
    this.orgFacet,
    this.perFacet,
    this.geoFacet,
    this.multimedia,
    this.shortUrl,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
