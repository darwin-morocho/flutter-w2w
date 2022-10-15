import '../models/media/media.dart';

class FavoritesResponse {
  FavoritesResponse(this.movies, this.tvShows);

  final List<Media> movies;
  final List<Media> tvShows;
}
