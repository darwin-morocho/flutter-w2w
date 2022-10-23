// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trailer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Trailer _$TrailerFromJson(Map<String, dynamic> json) {
  return _Trailer.fromJson(json);
}

/// @nodoc
mixin _$Trailer {
  @JsonKey(name: 'id', fromJson: _videoIdFromJson)
  String get videoId => throw _privateConstructorUsedError;

  ///
  @JsonKey(readValue: _readSnippetValue, fromJson: _titleFromJson)
  String get title => throw _privateConstructorUsedError;

  ///
  @JsonKey(readValue: _readSnippetValue, fromJson: _descriptionFromJson)
  String get description => throw _privateConstructorUsedError;

  ///
  @JsonKey(
      readValue: _readSnippetValue,
      name: 'snippet',
      fromJson: _thumbnailFromJson)
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailerCopyWith<Trailer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailerCopyWith<$Res> {
  factory $TrailerCopyWith(Trailer value, $Res Function(Trailer) then) =
      _$TrailerCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', fromJson: _videoIdFromJson)
          String videoId,
      @JsonKey(readValue: _readSnippetValue, fromJson: _titleFromJson)
          String title,
      @JsonKey(readValue: _readSnippetValue, fromJson: _descriptionFromJson)
          String description,
      @JsonKey(readValue: _readSnippetValue, name: 'snippet', fromJson: _thumbnailFromJson)
          String thumbnail});
}

/// @nodoc
class _$TrailerCopyWithImpl<$Res> implements $TrailerCopyWith<$Res> {
  _$TrailerCopyWithImpl(this._value, this._then);

  final Trailer _value;
  // ignore: unused_field
  final $Res Function(Trailer) _then;

  @override
  $Res call({
    Object? videoId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TrailerCopyWith<$Res> implements $TrailerCopyWith<$Res> {
  factory _$$_TrailerCopyWith(
          _$_Trailer value, $Res Function(_$_Trailer) then) =
      __$$_TrailerCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', fromJson: _videoIdFromJson)
          String videoId,
      @JsonKey(readValue: _readSnippetValue, fromJson: _titleFromJson)
          String title,
      @JsonKey(readValue: _readSnippetValue, fromJson: _descriptionFromJson)
          String description,
      @JsonKey(readValue: _readSnippetValue, name: 'snippet', fromJson: _thumbnailFromJson)
          String thumbnail});
}

/// @nodoc
class __$$_TrailerCopyWithImpl<$Res> extends _$TrailerCopyWithImpl<$Res>
    implements _$$_TrailerCopyWith<$Res> {
  __$$_TrailerCopyWithImpl(_$_Trailer _value, $Res Function(_$_Trailer) _then)
      : super(_value, (v) => _then(v as _$_Trailer));

  @override
  _$_Trailer get _value => super._value as _$_Trailer;

  @override
  $Res call({
    Object? videoId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_Trailer(
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trailer implements _Trailer {
  _$_Trailer(
      {@JsonKey(name: 'id', fromJson: _videoIdFromJson)
          required this.videoId,
      @JsonKey(readValue: _readSnippetValue, fromJson: _titleFromJson)
          required this.title,
      @JsonKey(readValue: _readSnippetValue, fromJson: _descriptionFromJson)
          required this.description,
      @JsonKey(readValue: _readSnippetValue, name: 'snippet', fromJson: _thumbnailFromJson)
          required this.thumbnail});

  factory _$_Trailer.fromJson(Map<String, dynamic> json) =>
      _$$_TrailerFromJson(json);

  @override
  @JsonKey(name: 'id', fromJson: _videoIdFromJson)
  final String videoId;

  ///
  @override
  @JsonKey(readValue: _readSnippetValue, fromJson: _titleFromJson)
  final String title;

  ///
  @override
  @JsonKey(readValue: _readSnippetValue, fromJson: _descriptionFromJson)
  final String description;

  ///
  @override
  @JsonKey(
      readValue: _readSnippetValue,
      name: 'snippet',
      fromJson: _thumbnailFromJson)
  final String thumbnail;

  @override
  String toString() {
    return 'Trailer(videoId: $videoId, title: $title, description: $description, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trailer &&
            const DeepCollectionEquality().equals(other.videoId, videoId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(videoId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(thumbnail));

  @JsonKey(ignore: true)
  @override
  _$$_TrailerCopyWith<_$_Trailer> get copyWith =>
      __$$_TrailerCopyWithImpl<_$_Trailer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrailerToJson(
      this,
    );
  }
}

abstract class _Trailer implements Trailer {
  factory _Trailer(
      {@JsonKey(name: 'id', fromJson: _videoIdFromJson)
          required final String videoId,
      @JsonKey(readValue: _readSnippetValue, fromJson: _titleFromJson)
          required final String title,
      @JsonKey(readValue: _readSnippetValue, fromJson: _descriptionFromJson)
          required final String description,
      @JsonKey(readValue: _readSnippetValue, name: 'snippet', fromJson: _thumbnailFromJson)
          required final String thumbnail}) = _$_Trailer;

  factory _Trailer.fromJson(Map<String, dynamic> json) = _$_Trailer.fromJson;

  @override
  @JsonKey(name: 'id', fromJson: _videoIdFromJson)
  String get videoId;
  @override

  ///
  @JsonKey(readValue: _readSnippetValue, fromJson: _titleFromJson)
  String get title;
  @override

  ///
  @JsonKey(readValue: _readSnippetValue, fromJson: _descriptionFromJson)
  String get description;
  @override

  ///
  @JsonKey(
      readValue: _readSnippetValue,
      name: 'snippet',
      fromJson: _thumbnailFromJson)
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_TrailerCopyWith<_$_Trailer> get copyWith =>
      throw _privateConstructorUsedError;
}
