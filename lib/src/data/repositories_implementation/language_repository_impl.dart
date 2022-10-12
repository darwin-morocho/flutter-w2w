import '../../domain/repositories/language_repository.dart';
import '../services/local/language_service.dart';

class LanguageRepositoryImpl implements LanguageRepository {
  LanguageRepositoryImpl(this._service);

  final LanguageService _service;

  @override
  String get languageCode => _service.languageCode;

  @override
  void setLanguageCode(String code) {
    _service.setLanguageCode(code);
  }
}
