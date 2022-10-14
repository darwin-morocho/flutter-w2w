// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/typedefs.dart';
import '../genre/genre.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required bool adult,
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    required int budget,
    required List<Genre> genres,
    required String homepage,
    required int id,
    @JsonKey(name: 'imdb_id') required String imdbId,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: 'poster_path') required String? posterPath,
    @JsonKey(name: 'production_companies') required List<ProductionCompany> productionCompanies,
    @JsonKey(name: 'production_countries') required List<ProductionCountry> productionCountries,
    @JsonKey(name: 'release_date') required DateTime releaseDate,
    required int revenue,
    required int runtime,
    @JsonKey(name: 'spoken_languages') required List<SpokenLanguage> spokenLanguages,
    required String status,
    required String tagline,
    required String title,
    required bool video,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _Movie;

  factory Movie.fromJson(Json json) => _$MovieFromJson(json);
}


@freezed
class ProductionCompany with _$ProductionCompany {
  const factory ProductionCompany({
    required int id,
    @JsonKey(name: 'logo_path') required String? logoPath,
    required String name,
  }) = _ProductionCompany;

  factory ProductionCompany.fromJson(Json json) => _$ProductionCompanyFromJson(json);
}

@freezed
class ProductionCountry with _$ProductionCountry {
  const factory ProductionCountry({
    @JsonKey(name: 'iso_639_1') required String? iso31661,
    required String name,
  }) = _ProductionCountry;

  factory ProductionCountry.fromJson(Json json) => _$ProductionCountryFromJson(json);
}

@freezed
class SpokenLanguage with _$SpokenLanguage {
  const factory SpokenLanguage({
    @JsonKey(name: 'iso_639_1') required String iso6391,
    required String name,
  }) = _SpokenLanguage;

  factory SpokenLanguage.fromJson(Json json) => _$SpokenLanguageFromJson(json);
}
