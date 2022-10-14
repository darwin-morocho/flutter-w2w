// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  int get id => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(readValue: _readTitle)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(readValue: _readOriginalTitle)
  String get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  double get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_air_date')
  DateTime? get firstAirDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_type', fromJson: _mediaTypeFromJson)
  MediaType get mediaType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res>;
  $Res call(
      {int id,
      bool adult,
      String overview,
      double popularity,
      @JsonKey(readValue: _readTitle)
          String title,
      @JsonKey(readValue: _readOriginalTitle)
          String originalTitle,
      @JsonKey(name: 'backdrop_path')
          String backdropPath,
      @JsonKey(name: 'poster_path')
          String posterPath,
      @JsonKey(name: 'genre_ids')
          List<int> genreIds,
      @JsonKey(name: 'vote_average')
          double voteAverage,
      @JsonKey(name: 'vote_count')
          double voteCount,
      @JsonKey(name: 'first_air_date')
          DateTime? firstAirDate,
      @JsonKey(name: 'media_type', fromJson: _mediaTypeFromJson)
          MediaType mediaType});
}

/// @nodoc
class _$MediaCopyWithImpl<$Res> implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  final Media _value;
  // ignore: unused_field
  final $Res Function(Media) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? adult = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? genreIds = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? firstAirDate = freezed,
    Object? mediaType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: genreIds == freezed
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as double,
      firstAirDate: firstAirDate == freezed
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ));
  }
}

/// @nodoc
abstract class _$$_MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$_MediaCopyWith(_$_Media value, $Res Function(_$_Media) then) =
      __$$_MediaCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      bool adult,
      String overview,
      double popularity,
      @JsonKey(readValue: _readTitle)
          String title,
      @JsonKey(readValue: _readOriginalTitle)
          String originalTitle,
      @JsonKey(name: 'backdrop_path')
          String backdropPath,
      @JsonKey(name: 'poster_path')
          String posterPath,
      @JsonKey(name: 'genre_ids')
          List<int> genreIds,
      @JsonKey(name: 'vote_average')
          double voteAverage,
      @JsonKey(name: 'vote_count')
          double voteCount,
      @JsonKey(name: 'first_air_date')
          DateTime? firstAirDate,
      @JsonKey(name: 'media_type', fromJson: _mediaTypeFromJson)
          MediaType mediaType});
}

/// @nodoc
class __$$_MediaCopyWithImpl<$Res> extends _$MediaCopyWithImpl<$Res>
    implements _$$_MediaCopyWith<$Res> {
  __$$_MediaCopyWithImpl(_$_Media _value, $Res Function(_$_Media) _then)
      : super(_value, (v) => _then(v as _$_Media));

  @override
  _$_Media get _value => super._value as _$_Media;

  @override
  $Res call({
    Object? id = freezed,
    Object? adult = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? genreIds = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? firstAirDate = freezed,
    Object? mediaType = freezed,
  }) {
    return _then(_$_Media(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: genreIds == freezed
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as double,
      firstAirDate: firstAirDate == freezed
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Media implements _Media {
  _$_Media(
      {required this.id,
      required this.adult,
      required this.overview,
      required this.popularity,
      @JsonKey(readValue: _readTitle)
          required this.title,
      @JsonKey(readValue: _readOriginalTitle)
          required this.originalTitle,
      @JsonKey(name: 'backdrop_path')
          required this.backdropPath,
      @JsonKey(name: 'poster_path')
          required this.posterPath,
      @JsonKey(name: 'genre_ids')
          required final List<int> genreIds,
      @JsonKey(name: 'vote_average')
          required this.voteAverage,
      @JsonKey(name: 'vote_count')
          required this.voteCount,
      @JsonKey(name: 'first_air_date')
          required this.firstAirDate,
      @JsonKey(name: 'media_type', fromJson: _mediaTypeFromJson)
          required this.mediaType})
      : _genreIds = genreIds;

  factory _$_Media.fromJson(Map<String, dynamic> json) =>
      _$$_MediaFromJson(json);

  @override
  final int id;
  @override
  final bool adult;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  @JsonKey(readValue: _readTitle)
  final String title;
  @override
  @JsonKey(readValue: _readOriginalTitle)
  final String originalTitle;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  final List<int> _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final double voteCount;
  @override
  @JsonKey(name: 'first_air_date')
  final DateTime? firstAirDate;
  @override
  @JsonKey(name: 'media_type', fromJson: _mediaTypeFromJson)
  final MediaType mediaType;

  @override
  String toString() {
    return 'Media(id: $id, adult: $adult, overview: $overview, popularity: $popularity, title: $title, originalTitle: $originalTitle, backdropPath: $backdropPath, posterPath: $posterPath, genreIds: $genreIds, voteAverage: $voteAverage, voteCount: $voteCount, firstAirDate: $firstAirDate, mediaType: $mediaType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Media &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.adult, adult) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.originalTitle, originalTitle) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality().equals(other.voteCount, voteCount) &&
            const DeepCollectionEquality()
                .equals(other.firstAirDate, firstAirDate) &&
            const DeepCollectionEquality().equals(other.mediaType, mediaType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(adult),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(originalTitle),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(_genreIds),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(voteCount),
      const DeepCollectionEquality().hash(firstAirDate),
      const DeepCollectionEquality().hash(mediaType));

  @JsonKey(ignore: true)
  @override
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      __$$_MediaCopyWithImpl<_$_Media>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaToJson(
      this,
    );
  }
}

abstract class _Media implements Media {
  factory _Media(
      {required final int id,
      required final bool adult,
      required final String overview,
      required final double popularity,
      @JsonKey(readValue: _readTitle)
          required final String title,
      @JsonKey(readValue: _readOriginalTitle)
          required final String originalTitle,
      @JsonKey(name: 'backdrop_path')
          required final String backdropPath,
      @JsonKey(name: 'poster_path')
          required final String posterPath,
      @JsonKey(name: 'genre_ids')
          required final List<int> genreIds,
      @JsonKey(name: 'vote_average')
          required final double voteAverage,
      @JsonKey(name: 'vote_count')
          required final double voteCount,
      @JsonKey(name: 'first_air_date')
          required final DateTime? firstAirDate,
      @JsonKey(name: 'media_type', fromJson: _mediaTypeFromJson)
          required final MediaType mediaType}) = _$_Media;

  factory _Media.fromJson(Map<String, dynamic> json) = _$_Media.fromJson;

  @override
  int get id;
  @override
  bool get adult;
  @override
  String get overview;
  @override
  double get popularity;
  @override
  @JsonKey(readValue: _readTitle)
  String get title;
  @override
  @JsonKey(readValue: _readOriginalTitle)
  String get originalTitle;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  double get voteCount;
  @override
  @JsonKey(name: 'first_air_date')
  DateTime? get firstAirDate;
  @override
  @JsonKey(name: 'media_type', fromJson: _mediaTypeFromJson)
  MediaType get mediaType;
  @override
  @JsonKey(ignore: true)
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      throw _privateConstructorUsedError;
}
