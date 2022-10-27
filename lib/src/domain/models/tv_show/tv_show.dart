// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/typedefs.dart';
import '../genre/genre.dart';

part 'tv_show.freezed.dart';
part 'tv_show.g.dart';

@freezed
class TvShow with _$TvShow {
  factory TvShow({
    required int id,
    required String name,
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'created_by') required List<Creator> creators,
    @JsonKey(name: 'first_air_date') DateTime? firstAirDate,
    @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
    required List<Genre> genres,
    required List<Network> networks,
    required List<Season> seasons,
    required String? homepage,
    required String overview,
    @JsonKey(name: 'number_of_episodes') required int numberOfEpisodes,
    @JsonKey(name: 'number_of_seasons') required int numberOfSeasons,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _TvShow;

  factory TvShow.fromJson(Json json) => _$TvShowFromJson(json);
}

@freezed
class Creator with _$Creator {
  factory Creator({
    required int id,
    required String name,
    @JsonKey(name: 'profile_path') required String? profilePath,
  }) = _Creator;

  factory Creator.fromJson(Json json) => _$CreatorFromJson(json);
}

@freezed
class Network with _$Network {
  factory Network({
    required int id,
    required String name,
    @JsonKey(name: 'logo_path') required String logoPath,
  }) = _Network;

  factory Network.fromJson(Json json) => _$NetworkFromJson(json);
}

@freezed
class Season with _$Season {
  const factory Season({
    @JsonKey(name: 'air_date') required DateTime airDate,
    @JsonKey(name: 'episode_count') required int episodeCount,
    required int id,
    required String name,
    required String overview,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'season_number') required int seasonNumber,
  }) = _Season;

  factory Season.fromJson(Json json) => _$SeasonFromJson(json);
}
