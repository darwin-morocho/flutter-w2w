// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/typedefs.dart';
import '../enums.dart';

part 'media.freezed.dart';
part 'media.g.dart';

@freezed
class Media with _$Media {
  factory Media({
    required int id,
    required bool adult,
    required String overview,
    required double popularity,
    @JsonKey(readValue: _readTitle) required String title,
    @JsonKey(readValue: _readOriginalTitle) required String originalTitle,
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'genre_ids') required List<int> genreIds,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
    @JsonKey(name: 'first_air_date') required DateTime? firstAirDate,
    @JsonKey(name: 'media_type', fromJson: _mediaTypeFromJson) required MediaType mediaType,
  }) = _Media;

  factory Media.fromJson(Json json) => _$MediaFromJson(json);

  static List<Media> getMediaList(
    List data, {
    MediaType? mediaType,
  }) {
    final list = <Media>[];

    for (final e in data) {
      if (e['poster_path'] != null && e['backdrop_path'] != null) {
        list.add(
          Media.fromJson({
            ...e,
            if (mediaType != null) 'media_type': mediaType.name,
          }),
        );
      }
    }
    return list;
  }
}

String _readTitle(Map map, String _) {
  final title = map['title'] ?? map['name'];
  return title;
}

String _readOriginalTitle(Map map, String _) {
  final title = map['original_title'] ?? map['original_name'];
  return title;
}

MediaType _mediaTypeFromJson(String text) {
  return MediaType.values.firstWhere((e) => e.name == text);
}
