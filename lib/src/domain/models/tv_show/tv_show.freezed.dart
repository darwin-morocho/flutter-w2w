// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tv_show.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TvShow _$TvShowFromJson(Map<String, dynamic> json) {
  return _TvShow.fromJson(json);
}

/// @nodoc
mixin _$TvShow {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  List<Creator> get creators => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_air_date')
  DateTime? get firstAirDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_air_date')
  DateTime? get lastAirDate => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;
  List<Network> get networks => throw _privateConstructorUsedError;
  List<Season> get seasons => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_episodes')
  int get numberOfEpisodes => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_seasons')
  int get numberOfSeasons => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvShowCopyWith<TvShow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowCopyWith<$Res> {
  factory $TvShowCopyWith(TvShow value, $Res Function(TvShow) then) =
      _$TvShowCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'created_by') List<Creator> creators,
      @JsonKey(name: 'first_air_date') DateTime? firstAirDate,
      @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
      List<Genre> genres,
      List<Network> networks,
      List<Season> seasons,
      String? homepage,
      String overview,
      @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount});
}

/// @nodoc
class _$TvShowCopyWithImpl<$Res> implements $TvShowCopyWith<$Res> {
  _$TvShowCopyWithImpl(this._value, this._then);

  final TvShow _value;
  // ignore: unused_field
  final $Res Function(TvShow) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? creators = freezed,
    Object? firstAirDate = freezed,
    Object? lastAirDate = freezed,
    Object? genres = freezed,
    Object? networks = freezed,
    Object? seasons = freezed,
    Object? homepage = freezed,
    Object? overview = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      creators: creators == freezed
          ? _value.creators
          : creators // ignore: cast_nullable_to_non_nullable
              as List<Creator>,
      firstAirDate: firstAirDate == freezed
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastAirDate: lastAirDate == freezed
          ? _value.lastAirDate
          : lastAirDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      networks: networks == freezed
          ? _value.networks
          : networks // ignore: cast_nullable_to_non_nullable
              as List<Network>,
      seasons: seasons == freezed
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfEpisodes: numberOfEpisodes == freezed
          ? _value.numberOfEpisodes
          : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfSeasons: numberOfSeasons == freezed
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TvShowCopyWith<$Res> implements $TvShowCopyWith<$Res> {
  factory _$$_TvShowCopyWith(_$_TvShow value, $Res Function(_$_TvShow) then) =
      __$$_TvShowCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'created_by') List<Creator> creators,
      @JsonKey(name: 'first_air_date') DateTime? firstAirDate,
      @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
      List<Genre> genres,
      List<Network> networks,
      List<Season> seasons,
      String? homepage,
      String overview,
      @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount});
}

/// @nodoc
class __$$_TvShowCopyWithImpl<$Res> extends _$TvShowCopyWithImpl<$Res>
    implements _$$_TvShowCopyWith<$Res> {
  __$$_TvShowCopyWithImpl(_$_TvShow _value, $Res Function(_$_TvShow) _then)
      : super(_value, (v) => _then(v as _$_TvShow));

  @override
  _$_TvShow get _value => super._value as _$_TvShow;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? creators = freezed,
    Object? firstAirDate = freezed,
    Object? lastAirDate = freezed,
    Object? genres = freezed,
    Object? networks = freezed,
    Object? seasons = freezed,
    Object? homepage = freezed,
    Object? overview = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_$_TvShow(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      creators: creators == freezed
          ? _value._creators
          : creators // ignore: cast_nullable_to_non_nullable
              as List<Creator>,
      firstAirDate: firstAirDate == freezed
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastAirDate: lastAirDate == freezed
          ? _value.lastAirDate
          : lastAirDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      genres: genres == freezed
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      networks: networks == freezed
          ? _value._networks
          : networks // ignore: cast_nullable_to_non_nullable
              as List<Network>,
      seasons: seasons == freezed
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfEpisodes: numberOfEpisodes == freezed
          ? _value.numberOfEpisodes
          : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfSeasons: numberOfSeasons == freezed
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TvShow implements _TvShow {
  _$_TvShow(
      {required this.id,
      required this.name,
      @JsonKey(name: 'backdrop_path') required this.backdropPath,
      @JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'created_by') required final List<Creator> creators,
      @JsonKey(name: 'first_air_date') this.firstAirDate,
      @JsonKey(name: 'last_air_date') this.lastAirDate,
      required final List<Genre> genres,
      required final List<Network> networks,
      required final List<Season> seasons,
      required this.homepage,
      required this.overview,
      @JsonKey(name: 'number_of_episodes') required this.numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') required this.numberOfSeasons,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'vote_count') required this.voteCount})
      : _creators = creators,
        _genres = genres,
        _networks = networks,
        _seasons = seasons;

  factory _$_TvShow.fromJson(Map<String, dynamic> json) =>
      _$$_TvShowFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  final List<Creator> _creators;
  @override
  @JsonKey(name: 'created_by')
  List<Creator> get creators {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creators);
  }

  @override
  @JsonKey(name: 'first_air_date')
  final DateTime? firstAirDate;
  @override
  @JsonKey(name: 'last_air_date')
  final DateTime? lastAirDate;
  final List<Genre> _genres;
  @override
  List<Genre> get genres {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  final List<Network> _networks;
  @override
  List<Network> get networks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_networks);
  }

  final List<Season> _seasons;
  @override
  List<Season> get seasons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seasons);
  }

  @override
  final String? homepage;
  @override
  final String overview;
  @override
  @JsonKey(name: 'number_of_episodes')
  final int numberOfEpisodes;
  @override
  @JsonKey(name: 'number_of_seasons')
  final int numberOfSeasons;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;

  @override
  String toString() {
    return 'TvShow(id: $id, name: $name, backdropPath: $backdropPath, posterPath: $posterPath, creators: $creators, firstAirDate: $firstAirDate, lastAirDate: $lastAirDate, genres: $genres, networks: $networks, seasons: $seasons, homepage: $homepage, overview: $overview, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TvShow &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other._creators, _creators) &&
            const DeepCollectionEquality()
                .equals(other.firstAirDate, firstAirDate) &&
            const DeepCollectionEquality()
                .equals(other.lastAirDate, lastAirDate) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other._networks, _networks) &&
            const DeepCollectionEquality().equals(other._seasons, _seasons) &&
            const DeepCollectionEquality().equals(other.homepage, homepage) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.numberOfEpisodes, numberOfEpisodes) &&
            const DeepCollectionEquality()
                .equals(other.numberOfSeasons, numberOfSeasons) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality().equals(other.voteCount, voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(_creators),
      const DeepCollectionEquality().hash(firstAirDate),
      const DeepCollectionEquality().hash(lastAirDate),
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_networks),
      const DeepCollectionEquality().hash(_seasons),
      const DeepCollectionEquality().hash(homepage),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(numberOfEpisodes),
      const DeepCollectionEquality().hash(numberOfSeasons),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(voteCount));

  @JsonKey(ignore: true)
  @override
  _$$_TvShowCopyWith<_$_TvShow> get copyWith =>
      __$$_TvShowCopyWithImpl<_$_TvShow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TvShowToJson(
      this,
    );
  }
}

abstract class _TvShow implements TvShow {
  factory _TvShow(
      {required final int id,
      required final String name,
      @JsonKey(name: 'backdrop_path') required final String backdropPath,
      @JsonKey(name: 'poster_path') required final String posterPath,
      @JsonKey(name: 'created_by') required final List<Creator> creators,
      @JsonKey(name: 'first_air_date') final DateTime? firstAirDate,
      @JsonKey(name: 'last_air_date') final DateTime? lastAirDate,
      required final List<Genre> genres,
      required final List<Network> networks,
      required final List<Season> seasons,
      required final String? homepage,
      required final String overview,
      @JsonKey(name: 'number_of_episodes') required final int numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') required final int numberOfSeasons,
      @JsonKey(name: 'vote_average') required final double voteAverage,
      @JsonKey(name: 'vote_count') required final int voteCount}) = _$_TvShow;

  factory _TvShow.fromJson(Map<String, dynamic> json) = _$_TvShow.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'created_by')
  List<Creator> get creators;
  @override
  @JsonKey(name: 'first_air_date')
  DateTime? get firstAirDate;
  @override
  @JsonKey(name: 'last_air_date')
  DateTime? get lastAirDate;
  @override
  List<Genre> get genres;
  @override
  List<Network> get networks;
  @override
  List<Season> get seasons;
  @override
  String? get homepage;
  @override
  String get overview;
  @override
  @JsonKey(name: 'number_of_episodes')
  int get numberOfEpisodes;
  @override
  @JsonKey(name: 'number_of_seasons')
  int get numberOfSeasons;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$_TvShowCopyWith<_$_TvShow> get copyWith =>
      throw _privateConstructorUsedError;
}

Creator _$CreatorFromJson(Map<String, dynamic> json) {
  return _Creator.fromJson(json);
}

/// @nodoc
mixin _$Creator {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatorCopyWith<Creator> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorCopyWith<$Res> {
  factory $CreatorCopyWith(Creator value, $Res Function(Creator) then) =
      _$CreatorCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'profile_path') String? profilePath});
}

/// @nodoc
class _$CreatorCopyWithImpl<$Res> implements $CreatorCopyWith<$Res> {
  _$CreatorCopyWithImpl(this._value, this._then);

  final Creator _value;
  // ignore: unused_field
  final $Res Function(Creator) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CreatorCopyWith<$Res> implements $CreatorCopyWith<$Res> {
  factory _$$_CreatorCopyWith(
          _$_Creator value, $Res Function(_$_Creator) then) =
      __$$_CreatorCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'profile_path') String? profilePath});
}

/// @nodoc
class __$$_CreatorCopyWithImpl<$Res> extends _$CreatorCopyWithImpl<$Res>
    implements _$$_CreatorCopyWith<$Res> {
  __$$_CreatorCopyWithImpl(_$_Creator _value, $Res Function(_$_Creator) _then)
      : super(_value, (v) => _then(v as _$_Creator));

  @override
  _$_Creator get _value => super._value as _$_Creator;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_$_Creator(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Creator implements _Creator {
  _$_Creator(
      {required this.id,
      required this.name,
      @JsonKey(name: 'profile_path') required this.profilePath});

  factory _$_Creator.fromJson(Map<String, dynamic> json) =>
      _$$_CreatorFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'profile_path')
  final String? profilePath;

  @override
  String toString() {
    return 'Creator(id: $id, name: $name, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Creator &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.profilePath, profilePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(profilePath));

  @JsonKey(ignore: true)
  @override
  _$$_CreatorCopyWith<_$_Creator> get copyWith =>
      __$$_CreatorCopyWithImpl<_$_Creator>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatorToJson(
      this,
    );
  }
}

abstract class _Creator implements Creator {
  factory _Creator(
          {required final int id,
          required final String name,
          @JsonKey(name: 'profile_path') required final String? profilePath}) =
      _$_Creator;

  factory _Creator.fromJson(Map<String, dynamic> json) = _$_Creator.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'profile_path')
  String? get profilePath;
  @override
  @JsonKey(ignore: true)
  _$$_CreatorCopyWith<_$_Creator> get copyWith =>
      throw _privateConstructorUsedError;
}

Network _$NetworkFromJson(Map<String, dynamic> json) {
  return _Network.fromJson(json);
}

/// @nodoc
mixin _$Network {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_path')
  String get logoPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetworkCopyWith<Network> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkCopyWith<$Res> {
  factory $NetworkCopyWith(Network value, $Res Function(Network) then) =
      _$NetworkCopyWithImpl<$Res>;
  $Res call({int id, String name, @JsonKey(name: 'logo_path') String logoPath});
}

/// @nodoc
class _$NetworkCopyWithImpl<$Res> implements $NetworkCopyWith<$Res> {
  _$NetworkCopyWithImpl(this._value, this._then);

  final Network _value;
  // ignore: unused_field
  final $Res Function(Network) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logoPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoPath: logoPath == freezed
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NetworkCopyWith<$Res> implements $NetworkCopyWith<$Res> {
  factory _$$_NetworkCopyWith(
          _$_Network value, $Res Function(_$_Network) then) =
      __$$_NetworkCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, @JsonKey(name: 'logo_path') String logoPath});
}

/// @nodoc
class __$$_NetworkCopyWithImpl<$Res> extends _$NetworkCopyWithImpl<$Res>
    implements _$$_NetworkCopyWith<$Res> {
  __$$_NetworkCopyWithImpl(_$_Network _value, $Res Function(_$_Network) _then)
      : super(_value, (v) => _then(v as _$_Network));

  @override
  _$_Network get _value => super._value as _$_Network;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logoPath = freezed,
  }) {
    return _then(_$_Network(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoPath: logoPath == freezed
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Network implements _Network {
  _$_Network(
      {required this.id,
      required this.name,
      @JsonKey(name: 'logo_path') required this.logoPath});

  factory _$_Network.fromJson(Map<String, dynamic> json) =>
      _$$_NetworkFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'logo_path')
  final String logoPath;

  @override
  String toString() {
    return 'Network(id: $id, name: $name, logoPath: $logoPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Network &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.logoPath, logoPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(logoPath));

  @JsonKey(ignore: true)
  @override
  _$$_NetworkCopyWith<_$_Network> get copyWith =>
      __$$_NetworkCopyWithImpl<_$_Network>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NetworkToJson(
      this,
    );
  }
}

abstract class _Network implements Network {
  factory _Network(
      {required final int id,
      required final String name,
      @JsonKey(name: 'logo_path') required final String logoPath}) = _$_Network;

  factory _Network.fromJson(Map<String, dynamic> json) = _$_Network.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'logo_path')
  String get logoPath;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkCopyWith<_$_Network> get copyWith =>
      throw _privateConstructorUsedError;
}

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return _Season.fromJson(json);
}

/// @nodoc
mixin _$Season {
  @JsonKey(name: 'air_date')
  DateTime get airDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'episode_count')
  int get episodeCount => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'season_number')
  int get seasonNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonCopyWith<Season> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonCopyWith<$Res> {
  factory $SeasonCopyWith(Season value, $Res Function(Season) then) =
      _$SeasonCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'air_date') DateTime airDate,
      @JsonKey(name: 'episode_count') int episodeCount,
      int id,
      String name,
      String overview,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'season_number') int seasonNumber});
}

/// @nodoc
class _$SeasonCopyWithImpl<$Res> implements $SeasonCopyWith<$Res> {
  _$SeasonCopyWithImpl(this._value, this._then);

  final Season _value;
  // ignore: unused_field
  final $Res Function(Season) _then;

  @override
  $Res call({
    Object? airDate = freezed,
    Object? episodeCount = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? seasonNumber = freezed,
  }) {
    return _then(_value.copyWith(
      airDate: airDate == freezed
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      episodeCount: episodeCount == freezed
          ? _value.episodeCount
          : episodeCount // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      seasonNumber: seasonNumber == freezed
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SeasonCopyWith<$Res> implements $SeasonCopyWith<$Res> {
  factory _$$_SeasonCopyWith(_$_Season value, $Res Function(_$_Season) then) =
      __$$_SeasonCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'air_date') DateTime airDate,
      @JsonKey(name: 'episode_count') int episodeCount,
      int id,
      String name,
      String overview,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'season_number') int seasonNumber});
}

/// @nodoc
class __$$_SeasonCopyWithImpl<$Res> extends _$SeasonCopyWithImpl<$Res>
    implements _$$_SeasonCopyWith<$Res> {
  __$$_SeasonCopyWithImpl(_$_Season _value, $Res Function(_$_Season) _then)
      : super(_value, (v) => _then(v as _$_Season));

  @override
  _$_Season get _value => super._value as _$_Season;

  @override
  $Res call({
    Object? airDate = freezed,
    Object? episodeCount = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? seasonNumber = freezed,
  }) {
    return _then(_$_Season(
      airDate: airDate == freezed
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      episodeCount: episodeCount == freezed
          ? _value.episodeCount
          : episodeCount // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      seasonNumber: seasonNumber == freezed
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Season implements _Season {
  const _$_Season(
      {@JsonKey(name: 'air_date') required this.airDate,
      @JsonKey(name: 'episode_count') required this.episodeCount,
      required this.id,
      required this.name,
      required this.overview,
      @JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'season_number') required this.seasonNumber});

  factory _$_Season.fromJson(Map<String, dynamic> json) =>
      _$$_SeasonFromJson(json);

  @override
  @JsonKey(name: 'air_date')
  final DateTime airDate;
  @override
  @JsonKey(name: 'episode_count')
  final int episodeCount;
  @override
  final int id;
  @override
  final String name;
  @override
  final String overview;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'season_number')
  final int seasonNumber;

  @override
  String toString() {
    return 'Season(airDate: $airDate, episodeCount: $episodeCount, id: $id, name: $name, overview: $overview, posterPath: $posterPath, seasonNumber: $seasonNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Season &&
            const DeepCollectionEquality().equals(other.airDate, airDate) &&
            const DeepCollectionEquality()
                .equals(other.episodeCount, episodeCount) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.seasonNumber, seasonNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(airDate),
      const DeepCollectionEquality().hash(episodeCount),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(seasonNumber));

  @JsonKey(ignore: true)
  @override
  _$$_SeasonCopyWith<_$_Season> get copyWith =>
      __$$_SeasonCopyWithImpl<_$_Season>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeasonToJson(
      this,
    );
  }
}

abstract class _Season implements Season {
  const factory _Season(
          {@JsonKey(name: 'air_date') required final DateTime airDate,
          @JsonKey(name: 'episode_count') required final int episodeCount,
          required final int id,
          required final String name,
          required final String overview,
          @JsonKey(name: 'poster_path') required final String posterPath,
          @JsonKey(name: 'season_number') required final int seasonNumber}) =
      _$_Season;

  factory _Season.fromJson(Map<String, dynamic> json) = _$_Season.fromJson;

  @override
  @JsonKey(name: 'air_date')
  DateTime get airDate;
  @override
  @JsonKey(name: 'episode_count')
  int get episodeCount;
  @override
  int get id;
  @override
  String get name;
  @override
  String get overview;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'season_number')
  int get seasonNumber;
  @override
  @JsonKey(ignore: true)
  _$$_SeasonCopyWith<_$_Season> get copyWith =>
      throw _privateConstructorUsedError;
}
