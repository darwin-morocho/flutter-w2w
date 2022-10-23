import 'platform.dart';

class Env {
  Env._();

  static const apiKey = String.fromEnvironment('API_KEY');
  static const baseUrl = String.fromEnvironment('BASE_URL');
  static const baseImageUrl = String.fromEnvironment('BASE_IMAGE_URL');
  static const youtubeBaseUrl = String.fromEnvironment('YOUTUBE_BASE_URL');
  static const youtubeChannelId = String.fromEnvironment('YOUTUBE_CHANNEL_ID');

  static get youtubeApiKey {
    if (isIOS) {
      return const String.fromEnvironment('YOUTUBE_API_KEY_IOS');
    }
    return const String.fromEnvironment('YOUTUBE_API_KEY');
  }

  static String getImageUrl(
    String path, {
    ImageSize size = ImageSize.w342,
  }) {
    return '$baseImageUrl${size.name}$path';
  }
}

enum ImageSize {
  w185,
  w342,
  w500,
  w780,
  original,
}
