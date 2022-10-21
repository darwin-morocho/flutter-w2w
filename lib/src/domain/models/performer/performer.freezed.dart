// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'performer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Performer _$PerformerFromJson(Map<String, dynamic> json) {
  return _Performer.fromJson(json);
}

/// @nodoc
mixin _$Performer {
  int get id => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get character => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'known_for_department')
  String? get knownForDepartment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformerCopyWith<Performer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformerCopyWith<$Res> {
  factory $PerformerCopyWith(Performer value, $Res Function(Performer) then) =
      _$PerformerCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int order,
      String name,
      String character,
      @JsonKey(name: 'profile_path') String? profilePath,
      @JsonKey(name: 'known_for_department') String? knownForDepartment});
}

/// @nodoc
class _$PerformerCopyWithImpl<$Res> implements $PerformerCopyWith<$Res> {
  _$PerformerCopyWithImpl(this._value, this._then);

  final Performer _value;
  // ignore: unused_field
  final $Res Function(Performer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? order = freezed,
    Object? name = freezed,
    Object? character = freezed,
    Object? profilePath = freezed,
    Object? knownForDepartment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      knownForDepartment: knownForDepartment == freezed
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PerformerCopyWith<$Res> implements $PerformerCopyWith<$Res> {
  factory _$$_PerformerCopyWith(
          _$_Performer value, $Res Function(_$_Performer) then) =
      __$$_PerformerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int order,
      String name,
      String character,
      @JsonKey(name: 'profile_path') String? profilePath,
      @JsonKey(name: 'known_for_department') String? knownForDepartment});
}

/// @nodoc
class __$$_PerformerCopyWithImpl<$Res> extends _$PerformerCopyWithImpl<$Res>
    implements _$$_PerformerCopyWith<$Res> {
  __$$_PerformerCopyWithImpl(
      _$_Performer _value, $Res Function(_$_Performer) _then)
      : super(_value, (v) => _then(v as _$_Performer));

  @override
  _$_Performer get _value => super._value as _$_Performer;

  @override
  $Res call({
    Object? id = freezed,
    Object? order = freezed,
    Object? name = freezed,
    Object? character = freezed,
    Object? profilePath = freezed,
    Object? knownForDepartment = freezed,
  }) {
    return _then(_$_Performer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      knownForDepartment: knownForDepartment == freezed
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Performer implements _Performer {
  _$_Performer(
      {required this.id,
      required this.order,
      required this.name,
      required this.character,
      @JsonKey(name: 'profile_path') required this.profilePath,
      @JsonKey(name: 'known_for_department') required this.knownForDepartment});

  factory _$_Performer.fromJson(Map<String, dynamic> json) =>
      _$$_PerformerFromJson(json);

  @override
  final int id;
  @override
  final int order;
  @override
  final String name;
  @override
  final String character;
  @override
  @JsonKey(name: 'profile_path')
  final String? profilePath;
  @override
  @JsonKey(name: 'known_for_department')
  final String? knownForDepartment;

  @override
  String toString() {
    return 'Performer(id: $id, order: $order, name: $name, character: $character, profilePath: $profilePath, knownForDepartment: $knownForDepartment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Performer &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.character, character) &&
            const DeepCollectionEquality()
                .equals(other.profilePath, profilePath) &&
            const DeepCollectionEquality()
                .equals(other.knownForDepartment, knownForDepartment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(character),
      const DeepCollectionEquality().hash(profilePath),
      const DeepCollectionEquality().hash(knownForDepartment));

  @JsonKey(ignore: true)
  @override
  _$$_PerformerCopyWith<_$_Performer> get copyWith =>
      __$$_PerformerCopyWithImpl<_$_Performer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PerformerToJson(
      this,
    );
  }
}

abstract class _Performer implements Performer {
  factory _Performer(
      {required final int id,
      required final int order,
      required final String name,
      required final String character,
      @JsonKey(name: 'profile_path')
          required final String? profilePath,
      @JsonKey(name: 'known_for_department')
          required final String? knownForDepartment}) = _$_Performer;

  factory _Performer.fromJson(Map<String, dynamic> json) =
      _$_Performer.fromJson;

  @override
  int get id;
  @override
  int get order;
  @override
  String get name;
  @override
  String get character;
  @override
  @JsonKey(name: 'profile_path')
  String? get profilePath;
  @override
  @JsonKey(name: 'known_for_department')
  String? get knownForDepartment;
  @override
  @JsonKey(ignore: true)
  _$$_PerformerCopyWith<_$_Performer> get copyWith =>
      throw _privateConstructorUsedError;
}
