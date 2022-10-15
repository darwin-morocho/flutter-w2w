// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Favorites _$FavoritesFromJson(Map<String, dynamic> json) {
  return _Favorites.fromJson(json);
}

/// @nodoc
mixin _$Favorites {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _resultsFromJson)
  List<Media> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritesCopyWith<Favorites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesCopyWith<$Res> {
  factory $FavoritesCopyWith(Favorites value, $Res Function(Favorites) then) =
      _$FavoritesCopyWithImpl<$Res>;
  $Res call(
      {int page,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      @JsonKey(fromJson: _resultsFromJson) List<Media> results});
}

/// @nodoc
class _$FavoritesCopyWithImpl<$Res> implements $FavoritesCopyWith<$Res> {
  _$FavoritesCopyWithImpl(this._value, this._then);

  final Favorites _value;
  // ignore: unused_field
  final $Res Function(Favorites) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ));
  }
}

/// @nodoc
abstract class _$$_FavoritesCopyWith<$Res> implements $FavoritesCopyWith<$Res> {
  factory _$$_FavoritesCopyWith(
          _$_Favorites value, $Res Function(_$_Favorites) then) =
      __$$_FavoritesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      @JsonKey(fromJson: _resultsFromJson) List<Media> results});
}

/// @nodoc
class __$$_FavoritesCopyWithImpl<$Res> extends _$FavoritesCopyWithImpl<$Res>
    implements _$$_FavoritesCopyWith<$Res> {
  __$$_FavoritesCopyWithImpl(
      _$_Favorites _value, $Res Function(_$_Favorites) _then)
      : super(_value, (v) => _then(v as _$_Favorites));

  @override
  _$_Favorites get _value => super._value as _$_Favorites;

  @override
  $Res call({
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_Favorites(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Favorites implements _Favorites {
  _$_Favorites(
      {required this.page,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults,
      @JsonKey(fromJson: _resultsFromJson) required final List<Media> results})
      : _results = results;

  factory _$_Favorites.fromJson(Map<String, dynamic> json) =>
      _$$_FavoritesFromJson(json);

  @override
  final int page;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;
  final List<Media> _results;
  @override
  @JsonKey(fromJson: _resultsFromJson)
  List<Media> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'Favorites(page: $page, totalPages: $totalPages, totalResults: $totalResults, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Favorites &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(totalResults),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_FavoritesCopyWith<_$_Favorites> get copyWith =>
      __$$_FavoritesCopyWithImpl<_$_Favorites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoritesToJson(
      this,
    );
  }
}

abstract class _Favorites implements Favorites {
  factory _Favorites(
      {required final int page,
      @JsonKey(name: 'total_pages')
          required final int totalPages,
      @JsonKey(name: 'total_results')
          required final int totalResults,
      @JsonKey(fromJson: _resultsFromJson)
          required final List<Media> results}) = _$_Favorites;

  factory _Favorites.fromJson(Map<String, dynamic> json) =
      _$_Favorites.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(fromJson: _resultsFromJson)
  List<Media> get results;
  @override
  @JsonKey(ignore: true)
  _$$_FavoritesCopyWith<_$_Favorites> get copyWith =>
      throw _privateConstructorUsedError;
}
