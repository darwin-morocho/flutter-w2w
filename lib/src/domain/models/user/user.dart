// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/typedefs.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required int id,
    required String username,
    @JsonKey(name: 'include_adult') required bool includeAdult,
  }) = _User;

  factory User.fromJson(Json json) => _$UserFromJson(json);
}
