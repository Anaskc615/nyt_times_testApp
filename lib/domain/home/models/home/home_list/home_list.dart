import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'home_list.g.dart';

@JsonSerializable()
class HomeList {
  String? status;
  String? copyright;
  String? section;
  @JsonKey(name: 'last_updated')
  String? lastUpdated;
  @JsonKey(name: 'num_results')
  int? numResults;
  List<Result> results;

  HomeList({
    this.status,
    this.copyright,
    this.section,
    this.lastUpdated,
    this.numResults,
    this.results = const [],
  });

  factory HomeList.fromJson(Map<String, dynamic> json) {
    return _$HomeListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeListToJson(this);
}
