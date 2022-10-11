import '../../domain/repositories/auth_repository.dart';
import '../services/local/session.dart';

class AuthRepositoryImpl implements AuthRepository {
  final SessionService _sessionService;

  AuthRepositoryImpl(
    this._sessionService,
  );

  @override
  Future<String?> get sessionId => _sessionService.id;
}
