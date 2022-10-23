// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieState {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loading,
    required TResult Function(String id, Movie movie, List<Performer>? cast,
            List<Media>? recomendations)
        loaded,
    required TResult Function(String id) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? loading,
    TResult Function(String id, Movie movie, List<Performer>? cast,
            List<Media>? recomendations)?
        loaded,
    TResult Function(String id)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loading,
    TResult Function(String id, Movie movie, List<Performer>? cast,
            List<Media>? recomendations)?
        loaded,
    TResult Function(String id)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieLoading value) loading,
    required TResult Function(MovieLoaded value) loaded,
    required TResult Function(MovieFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieLoading value)? loading,
    TResult Function(MovieLoaded value)? loaded,
    TResult Function(MovieFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieLoading value)? loading,
    TResult Function(MovieLoaded value)? loaded,
    TResult Function(MovieFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieStateCopyWith<MovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res> implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  final MovieState _value;
  // ignore: unused_field
  final $Res Function(MovieState) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$MovieLoadingCopyWith<$Res>
    implements $MovieStateCopyWith<$Res> {
  factory _$$MovieLoadingCopyWith(
          _$MovieLoading value, $Res Function(_$MovieLoading) then) =
      __$$MovieLoadingCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$MovieLoadingCopyWithImpl<$Res> extends _$MovieStateCopyWithImpl<$Res>
    implements _$$MovieLoadingCopyWith<$Res> {
  __$$MovieLoadingCopyWithImpl(
      _$MovieLoading _value, $Res Function(_$MovieLoading) _then)
      : super(_value, (v) => _then(v as _$MovieLoading));

  @override
  _$MovieLoading get _value => super._value as _$MovieLoading;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$MovieLoading(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieLoading implements MovieLoading {
  const _$MovieLoading(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'MovieState.loading(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieLoading &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$MovieLoadingCopyWith<_$MovieLoading> get copyWith =>
      __$$MovieLoadingCopyWithImpl<_$MovieLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loading,
    required TResult Function(String id, Movie movie, List<Performer>? cast,
            List<Media>? recomendations)
        loaded,
    required TResult Function(String id) failed,
  }) {
    return loading(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? loading,
    TResult Function(String id, Movie movie, List<Performer>? cast,
            List<Media>? recomendations)?
        loaded,
    TResult Function(String id)? failed,
  }) {
    return loading?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loading,
    TResult Function(String id, Movie movie, List<Performer>? cast,
            List<Media>? recomendations)?
        loaded,
    TResult Function(String id)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieLoading value) loading,
    required TResult Function(MovieLoaded value) loaded,
    required TResult Function(MovieFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieLoading value)? loading,
    TResult Function(MovieLoaded value)? loaded,
    TResult Function(MovieFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieLoading value)? loading,
    TResult Function(MovieLoaded value)? loaded,
    TResult Function(MovieFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MovieLoading implements MovieState {
  const factory MovieLoading(final String id) = _$MovieLoading;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$MovieLoadingCopyWith<_$MovieLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MovieLoadedCopyWith<$Res>
    implements $MovieStateCopyWith<$Res> {
  factory _$$MovieLoadedCopyWith(
          _$MovieLoaded value, $Res Function(_$MovieLoaded) then) =
      __$$MovieLoadedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Movie movie,
      List<Performer>? cast,
      List<Media>? recomendations});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$MovieLoadedCopyWithImpl<$Res> extends _$MovieStateCopyWithImpl<$Res>
    implements _$$MovieLoadedCopyWith<$Res> {
  __$$MovieLoadedCopyWithImpl(
      _$MovieLoaded _value, $Res Function(_$MovieLoaded) _then)
      : super(_value, (v) => _then(v as _$MovieLoaded));

  @override
  _$MovieLoaded get _value => super._value as _$MovieLoaded;

  @override
  $Res call({
    Object? id = freezed,
    Object? movie = freezed,
    Object? cast = freezed,
    Object? recomendations = freezed,
  }) {
    return _then(_$MovieLoaded(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      movie: movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
      cast: cast == freezed
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Performer>?,
      recomendations: recomendations == freezed
          ? _value._recomendations
          : recomendations // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
    ));
  }

  @override
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc

class _$MovieLoaded implements MovieLoaded {
  const _$MovieLoaded(
      {required this.id,
      required this.movie,
      required final List<Performer>? cast,
      required final List<Media>? recomendations})
      : _cast = cast,
        _recomendations = recomendations;

  @override
  final String id;
  @override
  final Movie movie;
  final List<Performer>? _cast;
  @override
  List<Performer>? get cast {
    final value = _cast;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Media>? _recomendations;
  @override
  List<Media>? get recomendations {
    final value = _recomendations;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieState.loaded(id: $id, movie: $movie, cast: $cast, recomendations: $recomendations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieLoaded &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.movie, movie) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality()
                .equals(other._recomendations, _recomendations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(movie),
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_recomendations));

  @JsonKey(ignore: true)
  @override
  _$$MovieLoadedCopyWith<_$MovieLoaded> get copyWith =>
      __$$MovieLoadedCopyWithImpl<_$MovieLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loading,
    required TResult Function(String id, Movie movie, List<Performer>? cast,
            List<Media>? recomendations)
        loaded,
    required TResult Function(String id) failed,
  }) {
    return loaded(id, movie, cast, recomendations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? loading,
    TResult Function(String id, Movie movie, List<Performer>? cast,
            List<Media>? recomendations)?
        loaded,
    TResult Function(String id)? failed,
  }) {
    return loaded?.call(id, movie, cast, recomendations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loading,
    TResult Function(String id, Movie movie, List<Performer>? cast,
            List<Media>? recomendations)?
        loaded,
    TResult Function(String id)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(id, movie, cast, recomendations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieLoading value) loading,
    required TResult Function(MovieLoaded value) loaded,
    required TResult Function(MovieFailed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieLoading value)? loading,
    TResult Function(MovieLoaded value)? loaded,
    TResult Function(MovieFailed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieLoading value)? loading,
    TResult Function(MovieLoaded value)? loaded,
    TResult Function(MovieFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MovieLoaded implements MovieState {
  const factory MovieLoaded(
      {required final String id,
      required final Movie movie,
      required final List<Performer>? cast,
      required final List<Media>? recomendations}) = _$MovieLoaded;

  @override
  String get id;
  Movie get movie;
  List<Performer>? get cast;
  List<Media>? get recomendations;
  @override
  @JsonKey(ignore: true)
  _$$MovieLoadedCopyWith<_$MovieLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MovieFailedCopyWith<$Res>
    implements $MovieStateCopyWith<$Res> {
  factory _$$MovieFailedCopyWith(
          _$MovieFailed value, $Res Function(_$MovieFailed) then) =
      __$$MovieFailedCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$MovieFailedCopyWithImpl<$Res> extends _$MovieStateCopyWithImpl<$Res>
    implements _$$MovieFailedCopyWith<$Res> {
  __$$MovieFailedCopyWithImpl(
      _$MovieFailed _value, $Res Function(_$MovieFailed) _then)
      : super(_value, (v) => _then(v as _$MovieFailed));

  @override
  _$MovieFailed get _value => super._value as _$MovieFailed;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$MovieFailed(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieFailed implements MovieFailed {
  const _$MovieFailed(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'MovieState.failed(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieFailed &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$MovieFailedCopyWith<_$MovieFailed> get copyWith =>
      __$$MovieFailedCopyWithImpl<_$MovieFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loading,
    required TResult Function(String id, Movie movie, List<Performer>? cast,
            List<Media>? recomendations)
        loaded,
    required TResult Function(String id) failed,
  }) {
    return failed(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? loading,
    TResult Function(String id, Movie movie, List<Performer>? cast,
            List<Media>? recomendations)?
        loaded,
    TResult Function(String id)? failed,
  }) {
    return failed?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loading,
    TResult Function(String id, Movie movie, List<Performer>? cast,
            List<Media>? recomendations)?
        loaded,
    TResult Function(String id)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieLoading value) loading,
    required TResult Function(MovieLoaded value) loaded,
    required TResult Function(MovieFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieLoading value)? loading,
    TResult Function(MovieLoaded value)? loaded,
    TResult Function(MovieFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieLoading value)? loading,
    TResult Function(MovieLoaded value)? loaded,
    TResult Function(MovieFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class MovieFailed implements MovieState {
  const factory MovieFailed(final String id) = _$MovieFailed;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$MovieFailedCopyWith<_$MovieFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
