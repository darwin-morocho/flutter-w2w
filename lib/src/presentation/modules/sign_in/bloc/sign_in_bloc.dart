import '../../../../core/either/either.dart';
import '../../../../domain/failures/http_request/http_request_failure.dart';
import '../../../../domain/models/user/user.dart';
import '../../../../domain/repositories/auth_repository.dart';
import '../../../global/blocs/session/session_bloc.dart';
import '../../../global/notifiers/state_notifier.dart';
import 'sign_in_state.dart';

class SignInBLoC extends StateNotifier<SignInState> {
  SignInBLoC({
    required this.authRepository,
    required this.sessionBLoC,
  }) : super(
          const SignInState(),
        );

  final AuthRepository authRepository;
  final SessionBLoC sessionBLoC;

  void onUsernameChanged(String text) {
    state = state.copyWith(
      username: text.trim(),
    );
  }

  void onPasswordChanged(String text) {
    state = state.copyWith(
      password: text.trim(),
    );
  }

  Future<Either<HttpRequestFailure, User>> submit() async {
    state = state.copyWith(
      submitting: true,
    );

    final result = await authRepository.signIn(
      username: state.username,
      password: state.password,
    );

    result.whenOrNull(
      left: (_) {
        state = state.copyWith(
          submitting: false,
        );
      },
      right: (user) {
        sessionBLoC.setUser(
          user,
          notify: false,
        );
      },
    );

    return result;
  }
}
