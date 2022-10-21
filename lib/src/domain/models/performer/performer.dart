// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/typedefs.dart';

part 'performer.freezed.dart';
part 'performer.g.dart';

@freezed
class Performer with _$Performer {
  factory Performer({
    required int id,
    required int order,
    required String name,
    required String character,
    @JsonKey(name: 'profile_path') required String? profilePath,
    @JsonKey(name: 'known_for_department') required String? knownForDepartment,
  }) = _Performer;

  factory Performer.fromJson(Json json) => _$PerformerFromJson(json);
}
