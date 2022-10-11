import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../../register/register_repositories.dart';
import '../../../router/router.dart';
import '../bloc/sign_in_bloc.dart';

class SignInView extends StatelessWidget {
  const SignInView({
    super.key,
    required this.nextLocation,
  });
  final String? nextLocation;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SignInBLoC(
        authRepository: Repositories.auth,
        sessionBLoC: context.read(),
      ),
      builder: (context, __) {
        final SignInBLoC bloc = context.watch();
        final state = bloc.state;

        final allowSubmit = state.username.isNotEmpty && state.password.isNotEmpty;

        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: AbsorbPointer(
                absorbing: state.submitting,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextField(
                      onChanged: bloc.onUsernameChanged,
                      decoration: const InputDecoration(
                        label: Text('username'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      onChanged: bloc.onPasswordChanged,
                      decoration: const InputDecoration(
                        label: Text('password'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: allowSubmit
                            ? () {
                                _submit(context);
                              }
                            : null,
                        disabledColor: Colors.black12,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        color: Colors.black,
                        child: state.submitting
                            ? const SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator(),
                              )
                            : const Text(
                                'SIGN IN',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _submit(BuildContext context) async {
    final SignInBLoC bloc = context.read();
    final result = await bloc.submit();

    if (bloc.mounted) {
      result.when(
        left: (failure) {},
        right: (user) {
          context.go(Routes.home);
        },
      );
    }
  }
}
