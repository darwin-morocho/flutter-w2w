import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../../register/register_repositories.dart';
import '../../../global/blocs/favorites/bloc.dart';
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
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: AbsorbPointer(
                      absorbing: state.submitting,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextField(
                            onChanged: bloc.onUsernameChanged,
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              label: Text('username'),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextField(
                            onChanged: bloc.onPasswordChanged,
                            textInputAction: TextInputAction.send,
                            decoration: const InputDecoration(
                              label: Text('password'),
                              border: OutlineInputBorder(),
                            ),
                            onSubmitted: (_) {
                              if (allowSubmit) {
                                _submit(context);
                              }
                            },
                          ),
                          const SizedBox(height: 50),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: allowSubmit
                                  ? () {
                                      _submit(context);
                                    }
                                  : null,
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
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Not a member?'),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Register Now',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _submit(BuildContext context) async {
    final SignInBLoC bloc = context.read();
    final FavoritesBloc favoritesBloc = context.read();

    final result = await bloc.submit();

    if (bloc.mounted) {
      result.when(
        left: (failure) {},
        right: (user) {
          favoritesBloc.init();
          context.go(nextLocation ?? Routes.home);
        },
      );
    }
  }
}
