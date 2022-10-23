// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/typedefs.dart';

part 'trailer.freezed.dart';
part 'trailer.g.dart';

@freezed
class Trailer with _$Trailer {
  factory Trailer({
    @JsonKey(name: 'id', fromJson: _videoIdFromJson)
        required String videoId,

    ///
    @JsonKey(
      readValue: _readSnippetValue,
      fromJson: _titleFromJson,
    )
        required String title,

    ///
    @JsonKey(
      readValue: _readSnippetValue,
      fromJson: _descriptionFromJson,
    )
        required String description,

    ///
    @JsonKey(
      readValue: _readSnippetValue,
      name: 'snippet',
      fromJson: _thumbnailFromJson,
    )
        required String thumbnail,
  }) = _Trailer;

  factory Trailer.fromJson(Json json) => _$TrailerFromJson(json);
}

Object? _readSnippetValue(Map<dynamic, dynamic> json, String _) {
  return json['snippet'];
}

String _videoIdFromJson(Json json) {
  return json['videoId'];
}

String _titleFromJson(Json json) {
  return json['title'];
}

String _descriptionFromJson(Json json) {
  return json['description'];
}

String _thumbnailFromJson(Json json) {
  return json['thumbnails']['high']['url'];
}
