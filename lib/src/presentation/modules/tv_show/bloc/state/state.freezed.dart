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
mixin _$TvShowState {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) loading,
    required TResult Function(int id, TvShow show) loaded,
    required TResult Function(int id) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? loading,
    TResult Function(int id, TvShow show)? loaded,
    TResult Function(int id)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? loading,
    TResult Function(int id, TvShow show)? loaded,
    TResult Function(int id)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TvShowLoading value) loading,
    required TResult Function(TvShowLoaded value) loaded,
    required TResult Function(TvShowFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TvShowLoading value)? loading,
    TResult Function(TvShowLoaded value)? loaded,
    TResult Function(TvShowFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TvShowLoading value)? loading,
    TResult Function(TvShowLoaded value)? loaded,
    TResult Function(TvShowFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TvShowStateCopyWith<TvShowState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowStateCopyWith<$Res> {
  factory $TvShowStateCopyWith(
          TvShowState value, $Res Function(TvShowState) then) =
      _$TvShowStateCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$TvShowStateCopyWithImpl<$Res> implements $TvShowStateCopyWith<$Res> {
  _$TvShowStateCopyWithImpl(this._value, this._then);

  final TvShowState _value;
  // ignore: unused_field
  final $Res Function(TvShowState) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$TvShowLoadingCopyWith<$Res>
    implements $TvShowStateCopyWith<$Res> {
  factory _$$TvShowLoadingCopyWith(
          _$TvShowLoading value, $Res Function(_$TvShowLoading) then) =
      __$$TvShowLoadingCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$$TvShowLoadingCopyWithImpl<$Res>
    extends _$TvShowStateCopyWithImpl<$Res>
    implements _$$TvShowLoadingCopyWith<$Res> {
  __$$TvShowLoadingCopyWithImpl(
      _$TvShowLoading _value, $Res Function(_$TvShowLoading) _then)
      : super(_value, (v) => _then(v as _$TvShowLoading));

  @override
  _$TvShowLoading get _value => super._value as _$TvShowLoading;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$TvShowLoading(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TvShowLoading implements TvShowLoading {
  _$TvShowLoading(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'TvShowState.loading(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowLoading &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$TvShowLoadingCopyWith<_$TvShowLoading> get copyWith =>
      __$$TvShowLoadingCopyWithImpl<_$TvShowLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) loading,
    required TResult Function(int id, TvShow show) loaded,
    required TResult Function(int id) failed,
  }) {
    return loading(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? loading,
    TResult Function(int id, TvShow show)? loaded,
    TResult Function(int id)? failed,
  }) {
    return loading?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? loading,
    TResult Function(int id, TvShow show)? loaded,
    TResult Function(int id)? failed,
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
    required TResult Function(TvShowLoading value) loading,
    required TResult Function(TvShowLoaded value) loaded,
    required TResult Function(TvShowFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TvShowLoading value)? loading,
    TResult Function(TvShowLoaded value)? loaded,
    TResult Function(TvShowFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TvShowLoading value)? loading,
    TResult Function(TvShowLoaded value)? loaded,
    TResult Function(TvShowFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TvShowLoading implements TvShowState {
  factory TvShowLoading(final int id) = _$TvShowLoading;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$TvShowLoadingCopyWith<_$TvShowLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TvShowLoadedCopyWith<$Res>
    implements $TvShowStateCopyWith<$Res> {
  factory _$$TvShowLoadedCopyWith(
          _$TvShowLoaded value, $Res Function(_$TvShowLoaded) then) =
      __$$TvShowLoadedCopyWithImpl<$Res>;
  @override
  $Res call({int id, TvShow show});

  $TvShowCopyWith<$Res> get show;
}

/// @nodoc
class __$$TvShowLoadedCopyWithImpl<$Res> extends _$TvShowStateCopyWithImpl<$Res>
    implements _$$TvShowLoadedCopyWith<$Res> {
  __$$TvShowLoadedCopyWithImpl(
      _$TvShowLoaded _value, $Res Function(_$TvShowLoaded) _then)
      : super(_value, (v) => _then(v as _$TvShowLoaded));

  @override
  _$TvShowLoaded get _value => super._value as _$TvShowLoaded;

  @override
  $Res call({
    Object? id = freezed,
    Object? show = freezed,
  }) {
    return _then(_$TvShowLoaded(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as TvShow,
    ));
  }

  @override
  $TvShowCopyWith<$Res> get show {
    return $TvShowCopyWith<$Res>(_value.show, (value) {
      return _then(_value.copyWith(show: value));
    });
  }
}

/// @nodoc

class _$TvShowLoaded implements TvShowLoaded {
  _$TvShowLoaded({required this.id, required this.show});

  @override
  final int id;
  @override
  final TvShow show;

  @override
  String toString() {
    return 'TvShowState.loaded(id: $id, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowLoaded &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.show, show));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(show));

  @JsonKey(ignore: true)
  @override
  _$$TvShowLoadedCopyWith<_$TvShowLoaded> get copyWith =>
      __$$TvShowLoadedCopyWithImpl<_$TvShowLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) loading,
    required TResult Function(int id, TvShow show) loaded,
    required TResult Function(int id) failed,
  }) {
    return loaded(id, show);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? loading,
    TResult Function(int id, TvShow show)? loaded,
    TResult Function(int id)? failed,
  }) {
    return loaded?.call(id, show);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? loading,
    TResult Function(int id, TvShow show)? loaded,
    TResult Function(int id)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(id, show);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TvShowLoading value) loading,
    required TResult Function(TvShowLoaded value) loaded,
    required TResult Function(TvShowFailed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TvShowLoading value)? loading,
    TResult Function(TvShowLoaded value)? loaded,
    TResult Function(TvShowFailed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TvShowLoading value)? loading,
    TResult Function(TvShowLoaded value)? loaded,
    TResult Function(TvShowFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TvShowLoaded implements TvShowState {
  factory TvShowLoaded({required final int id, required final TvShow show}) =
      _$TvShowLoaded;

  @override
  int get id;
  TvShow get show;
  @override
  @JsonKey(ignore: true)
  _$$TvShowLoadedCopyWith<_$TvShowLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TvShowFailedCopyWith<$Res>
    implements $TvShowStateCopyWith<$Res> {
  factory _$$TvShowFailedCopyWith(
          _$TvShowFailed value, $Res Function(_$TvShowFailed) then) =
      __$$TvShowFailedCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$$TvShowFailedCopyWithImpl<$Res> extends _$TvShowStateCopyWithImpl<$Res>
    implements _$$TvShowFailedCopyWith<$Res> {
  __$$TvShowFailedCopyWithImpl(
      _$TvShowFailed _value, $Res Function(_$TvShowFailed) _then)
      : super(_value, (v) => _then(v as _$TvShowFailed));

  @override
  _$TvShowFailed get _value => super._value as _$TvShowFailed;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$TvShowFailed(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TvShowFailed implements TvShowFailed {
  _$TvShowFailed(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'TvShowState.failed(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowFailed &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$TvShowFailedCopyWith<_$TvShowFailed> get copyWith =>
      __$$TvShowFailedCopyWithImpl<_$TvShowFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) loading,
    required TResult Function(int id, TvShow show) loaded,
    required TResult Function(int id) failed,
  }) {
    return failed(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? loading,
    TResult Function(int id, TvShow show)? loaded,
    TResult Function(int id)? failed,
  }) {
    return failed?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? loading,
    TResult Function(int id, TvShow show)? loaded,
    TResult Function(int id)? failed,
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
    required TResult Function(TvShowLoading value) loading,
    required TResult Function(TvShowLoaded value) loaded,
    required TResult Function(TvShowFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TvShowLoading value)? loading,
    TResult Function(TvShowLoaded value)? loaded,
    TResult Function(TvShowFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TvShowLoading value)? loading,
    TResult Function(TvShowLoaded value)? loaded,
    TResult Function(TvShowFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class TvShowFailed implements TvShowState {
  factory TvShowFailed(final int id) = _$TvShowFailed;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$TvShowFailedCopyWith<_$TvShowFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
