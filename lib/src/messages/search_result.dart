part of '../../messages.dart';

enum _SearchResultObject {
  @JsonValue('search_result')
  searchResult,
}

@JsonSerializable()
class SearchResult<T> {
  final _SearchResultObject object;
  final List<T> data;
  final bool hasMore;
  final String url;
  final String? nextPage;

  SearchResult({
    required this.object,
    required this.data,
    required this.hasMore,
    required this.url,
    this.nextPage,
  });

  factory SearchResult.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$SearchResultFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$SearchResultToJson(this, toJsonT);
}
