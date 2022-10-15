// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/typedefs.dart';
import '../media/media.dart';

part 'favorites.freezed.dart';
part 'favorites.g.dart';

@freezed
class Favorites with _$Favorites {
  factory Favorites({
    required int page,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
    @JsonKey(fromJson: _resultsFromJson) required List<Media> results,
  }) = _Favorites;

  factory Favorites.fromJson(Json json) => _$FavoritesFromJson(json);
}

List<Media> _resultsFromJson(List data) {
  return Media.getMediaList(data);
}
