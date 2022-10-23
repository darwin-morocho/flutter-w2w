import '../../domain/repositories/deep_links_repository.dart';

class DeepLinksRepositoryImpl implements DeepLinksRepository {
  DeepLinksRepositoryImpl({required Uri? initialLink}) : _initialLink = initialLink;

  final Uri? _initialLink;

  @override
  Uri? get initialLink => _initialLink;
}
