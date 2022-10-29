# what_to_watch
A new Flutter project.

## Features:

- Internationalization.
- Dark Mode.
- Clean Architecture.
- Navigator 2 with go_router.
- Nested navigation.
- Deeplinks support.
- Integration with the movie db API.

## Local deploy:

First run 
```shell
flutter pub get
```

If you are using vscode just run the project using `Run > Run without debugging` or check the `.vscode/launch.json` file

Now generate the freezed, translations and assets
```shell
flutter pub run build_runner build --delete-conflicting-outputs
flutter pub run slang
flutter pub run flutter_gen:flutter_gen_command
```


Run the project using
```shell
flutter run --dart-define=API_KEY=20ac754dbe6ba584a7a8a8690c755249 --dart-define=BASE_URL=https://api.themoviedb.org/3 --dart-define=BASE_IMAGE_URL=https://image.tmdb.org/t/p/ --dart-define=YOUTUBE_API_KEY=AIzaSyD-GMgajOcqY5HFqTYYjibHmObG7XxzNnQ --dart-define=YOUTUBE_API_KEY_IOS=AIzaSyDd_EoLsM8ZAQ0-MR4Pqy4L67EnLQqJphI --dart-define=YOUTUBE_CHANNEL_ID=UCcVNDl7ZJMf9lC9a34CY4RA --dart-define=YOUTUBE_BASE_URL=https://www.googleapis.com/youtube/v3
```