import '../../core/either/either.dart';
import '../../data/services/local/session.dart';
import '../failures/http_request/http_request_failure.dart';
import '../models/user/user.dart';

abstract class AuthRepository {
  Future<Session?> get session;
  Future<Either<HttpRequestFailure, User>> signIn({
    required String username,
    required String password,
  });

  Future<void> signOut();
}
