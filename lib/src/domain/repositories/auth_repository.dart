import '../../core/either/either.dart';
import '../failures/http_request/http_request_failure.dart';
import '../models/user/user.dart';

abstract class AuthRepository {
  Future<String?> get sessionId;
  Future<Either<HttpRequestFailure, User>> signIn({
    required String username,
    required String password,
  });

  Future<void> signOut();
}
