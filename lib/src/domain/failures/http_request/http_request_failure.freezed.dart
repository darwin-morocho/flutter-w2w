// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'http_request_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HttpRequestFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() notFound,
    required TResult Function() badRequest,
    required TResult Function() unauthorized,
    required TResult Function() serverSide,
    required TResult Function() unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? serverSide,
    TResult Function()? unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? serverSide,
    TResult Function()? unhandled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(BadRequestFailure value) badRequest,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(ServerSideFailure value) serverSide,
    required TResult Function(UnhandledFailure value) unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(BadRequestFailure value)? badRequest,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ServerSideFailure value)? serverSide,
    TResult Function(UnhandledFailure value)? unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(BadRequestFailure value)? badRequest,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ServerSideFailure value)? serverSide,
    TResult Function(UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpRequestFailureCopyWith<$Res> {
  factory $HttpRequestFailureCopyWith(
          HttpRequestFailure value, $Res Function(HttpRequestFailure) then) =
      _$HttpRequestFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$HttpRequestFailureCopyWithImpl<$Res>
    implements $HttpRequestFailureCopyWith<$Res> {
  _$HttpRequestFailureCopyWithImpl(this._value, this._then);

  final HttpRequestFailure _value;
  // ignore: unused_field
  final $Res Function(HttpRequestFailure) _then;
}

/// @nodoc
abstract class _$$NetworkFailureCopyWith<$Res> {
  factory _$$NetworkFailureCopyWith(
          _$NetworkFailure value, $Res Function(_$NetworkFailure) then) =
      __$$NetworkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkFailureCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res>
    implements _$$NetworkFailureCopyWith<$Res> {
  __$$NetworkFailureCopyWithImpl(
      _$NetworkFailure _value, $Res Function(_$NetworkFailure) _then)
      : super(_value, (v) => _then(v as _$NetworkFailure));

  @override
  _$NetworkFailure get _value => super._value as _$NetworkFailure;
}

/// @nodoc

class _$NetworkFailure implements NetworkFailure {
  const _$NetworkFailure();

  @override
  String toString() {
    return 'HttpRequestFailure.network()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() notFound,
    required TResult Function() badRequest,
    required TResult Function() unauthorized,
    required TResult Function() serverSide,
    required TResult Function() unhandled,
  }) {
    return network();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? serverSide,
    TResult Function()? unhandled,
  }) {
    return network?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? serverSide,
    TResult Function()? unhandled,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(BadRequestFailure value) badRequest,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(ServerSideFailure value) serverSide,
    required TResult Function(UnhandledFailure value) unhandled,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(BadRequestFailure value)? badRequest,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ServerSideFailure value)? serverSide,
    TResult Function(UnhandledFailure value)? unhandled,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(BadRequestFailure value)? badRequest,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ServerSideFailure value)? serverSide,
    TResult Function(UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements HttpRequestFailure {
  const factory NetworkFailure() = _$NetworkFailure;
}

/// @nodoc
abstract class _$$NotFoundFailureCopyWith<$Res> {
  factory _$$NotFoundFailureCopyWith(
          _$NotFoundFailure value, $Res Function(_$NotFoundFailure) then) =
      __$$NotFoundFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundFailureCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res>
    implements _$$NotFoundFailureCopyWith<$Res> {
  __$$NotFoundFailureCopyWithImpl(
      _$NotFoundFailure _value, $Res Function(_$NotFoundFailure) _then)
      : super(_value, (v) => _then(v as _$NotFoundFailure));

  @override
  _$NotFoundFailure get _value => super._value as _$NotFoundFailure;
}

/// @nodoc

class _$NotFoundFailure implements NotFoundFailure {
  const _$NotFoundFailure();

  @override
  String toString() {
    return 'HttpRequestFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() notFound,
    required TResult Function() badRequest,
    required TResult Function() unauthorized,
    required TResult Function() serverSide,
    required TResult Function() unhandled,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? serverSide,
    TResult Function()? unhandled,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? serverSide,
    TResult Function()? unhandled,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(BadRequestFailure value) badRequest,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(ServerSideFailure value) serverSide,
    required TResult Function(UnhandledFailure value) unhandled,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(BadRequestFailure value)? badRequest,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ServerSideFailure value)? serverSide,
    TResult Function(UnhandledFailure value)? unhandled,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(BadRequestFailure value)? badRequest,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ServerSideFailure value)? serverSide,
    TResult Function(UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFoundFailure implements HttpRequestFailure {
  const factory NotFoundFailure() = _$NotFoundFailure;
}

/// @nodoc
abstract class _$$BadRequestFailureCopyWith<$Res> {
  factory _$$BadRequestFailureCopyWith(
          _$BadRequestFailure value, $Res Function(_$BadRequestFailure) then) =
      __$$BadRequestFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BadRequestFailureCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res>
    implements _$$BadRequestFailureCopyWith<$Res> {
  __$$BadRequestFailureCopyWithImpl(
      _$BadRequestFailure _value, $Res Function(_$BadRequestFailure) _then)
      : super(_value, (v) => _then(v as _$BadRequestFailure));

  @override
  _$BadRequestFailure get _value => super._value as _$BadRequestFailure;
}

/// @nodoc

class _$BadRequestFailure implements BadRequestFailure {
  const _$BadRequestFailure();

  @override
  String toString() {
    return 'HttpRequestFailure.badRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BadRequestFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() notFound,
    required TResult Function() badRequest,
    required TResult Function() unauthorized,
    required TResult Function() serverSide,
    required TResult Function() unhandled,
  }) {
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? serverSide,
    TResult Function()? unhandled,
  }) {
    return badRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? serverSide,
    TResult Function()? unhandled,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(BadRequestFailure value) badRequest,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(ServerSideFailure value) serverSide,
    required TResult Function(UnhandledFailure value) unhandled,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(BadRequestFailure value)? badRequest,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ServerSideFailure value)? serverSide,
    TResult Function(UnhandledFailure value)? unhandled,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(BadRequestFailure value)? badRequest,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ServerSideFailure value)? serverSide,
    TResult Function(UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequestFailure implements HttpRequestFailure {
  const factory BadRequestFailure() = _$BadRequestFailure;
}

/// @nodoc
abstract class _$$UnauthorizedFailureCopyWith<$Res> {
  factory _$$UnauthorizedFailureCopyWith(_$UnauthorizedFailure value,
          $Res Function(_$UnauthorizedFailure) then) =
      __$$UnauthorizedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedFailureCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res>
    implements _$$UnauthorizedFailureCopyWith<$Res> {
  __$$UnauthorizedFailureCopyWithImpl(
      _$UnauthorizedFailure _value, $Res Function(_$UnauthorizedFailure) _then)
      : super(_value, (v) => _then(v as _$UnauthorizedFailure));

  @override
  _$UnauthorizedFailure get _value => super._value as _$UnauthorizedFailure;
}

/// @nodoc

class _$UnauthorizedFailure implements UnauthorizedFailure {
  const _$UnauthorizedFailure();

  @override
  String toString() {
    return 'HttpRequestFailure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() notFound,
    required TResult Function() badRequest,
    required TResult Function() unauthorized,
    required TResult Function() serverSide,
    required TResult Function() unhandled,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? serverSide,
    TResult Function()? unhandled,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? serverSide,
    TResult Function()? unhandled,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(BadRequestFailure value) badRequest,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(ServerSideFailure value) serverSide,
    required TResult Function(UnhandledFailure value) unhandled,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(BadRequestFailure value)? badRequest,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ServerSideFailure value)? serverSide,
    TResult Function(UnhandledFailure value)? unhandled,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(BadRequestFailure value)? badRequest,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ServerSideFailure value)? serverSide,
    TResult Function(UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedFailure implements HttpRequestFailure {
  const factory UnauthorizedFailure() = _$UnauthorizedFailure;
}

/// @nodoc
abstract class _$$ServerSideFailureCopyWith<$Res> {
  factory _$$ServerSideFailureCopyWith(
          _$ServerSideFailure value, $Res Function(_$ServerSideFailure) then) =
      __$$ServerSideFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerSideFailureCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res>
    implements _$$ServerSideFailureCopyWith<$Res> {
  __$$ServerSideFailureCopyWithImpl(
      _$ServerSideFailure _value, $Res Function(_$ServerSideFailure) _then)
      : super(_value, (v) => _then(v as _$ServerSideFailure));

  @override
  _$ServerSideFailure get _value => super._value as _$ServerSideFailure;
}

/// @nodoc

class _$ServerSideFailure implements ServerSideFailure {
  const _$ServerSideFailure();

  @override
  String toString() {
    return 'HttpRequestFailure.serverSide()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerSideFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() notFound,
    required TResult Function() badRequest,
    required TResult Function() unauthorized,
    required TResult Function() serverSide,
    required TResult Function() unhandled,
  }) {
    return serverSide();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? serverSide,
    TResult Function()? unhandled,
  }) {
    return serverSide?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? serverSide,
    TResult Function()? unhandled,
    required TResult orElse(),
  }) {
    if (serverSide != null) {
      return serverSide();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(BadRequestFailure value) badRequest,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(ServerSideFailure value) serverSide,
    required TResult Function(UnhandledFailure value) unhandled,
  }) {
    return serverSide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(BadRequestFailure value)? badRequest,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ServerSideFailure value)? serverSide,
    TResult Function(UnhandledFailure value)? unhandled,
  }) {
    return serverSide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(BadRequestFailure value)? badRequest,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ServerSideFailure value)? serverSide,
    TResult Function(UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) {
    if (serverSide != null) {
      return serverSide(this);
    }
    return orElse();
  }
}

abstract class ServerSideFailure implements HttpRequestFailure {
  const factory ServerSideFailure() = _$ServerSideFailure;
}

/// @nodoc
abstract class _$$UnhandledFailureCopyWith<$Res> {
  factory _$$UnhandledFailureCopyWith(
          _$UnhandledFailure value, $Res Function(_$UnhandledFailure) then) =
      __$$UnhandledFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnhandledFailureCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res>
    implements _$$UnhandledFailureCopyWith<$Res> {
  __$$UnhandledFailureCopyWithImpl(
      _$UnhandledFailure _value, $Res Function(_$UnhandledFailure) _then)
      : super(_value, (v) => _then(v as _$UnhandledFailure));

  @override
  _$UnhandledFailure get _value => super._value as _$UnhandledFailure;
}

/// @nodoc

class _$UnhandledFailure implements UnhandledFailure {
  const _$UnhandledFailure();

  @override
  String toString() {
    return 'HttpRequestFailure.unhandled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnhandledFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() notFound,
    required TResult Function() badRequest,
    required TResult Function() unauthorized,
    required TResult Function() serverSide,
    required TResult Function() unhandled,
  }) {
    return unhandled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? serverSide,
    TResult Function()? unhandled,
  }) {
    return unhandled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? serverSide,
    TResult Function()? unhandled,
    required TResult orElse(),
  }) {
    if (unhandled != null) {
      return unhandled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(BadRequestFailure value) badRequest,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(ServerSideFailure value) serverSide,
    required TResult Function(UnhandledFailure value) unhandled,
  }) {
    return unhandled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(BadRequestFailure value)? badRequest,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ServerSideFailure value)? serverSide,
    TResult Function(UnhandledFailure value)? unhandled,
  }) {
    return unhandled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(BadRequestFailure value)? badRequest,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(ServerSideFailure value)? serverSide,
    TResult Function(UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) {
    if (unhandled != null) {
      return unhandled(this);
    }
    return orElse();
  }
}

abstract class UnhandledFailure implements HttpRequestFailure {
  const factory UnhandledFailure() = _$UnhandledFailure;
}
