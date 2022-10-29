import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../../generated/translations.g.dart';
import '../../../global/app_colors.dart';
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
    return Consumer(
      builder: (context, ref, __) {
        final SignInBLoC bloc = ref.watch(signInProvider);
        final state = bloc.state;

        final allowSubmit = state.username.isNotEmpty && state.password.isNotEmpty;
        final theme = Theme.of(context);

        return Scaffold(
          body: SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 400,
                ),
                child: Theme(
                  data: theme.copyWith(
                    textTheme: theme.textTheme.copyWith(
                      subtitle1: TextStyle(
                        color: context.isDarkMode ? Colors.white : AppColors.dark,
                      ),
                    ),
                  ),
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
                                  decoration: InputDecoration(
                                    label: Text(texts.signIn.username),
                                    border: const OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                TextField(
                                  onChanged: bloc.onPasswordChanged,
                                  textInputAction: TextInputAction.send,
                                  decoration: InputDecoration(
                                    label: Text(texts.signIn.password),
                                    border: const OutlineInputBorder(),
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
                                        : Text(
                                            texts.signIn.signIn,
                                            style: const TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(texts.signIn.notMember),
                                    TextButton(
                                      onPressed: () {
                                        launchUrlString(
                                          'https://www.themoviedb.org/signup',
                                        );
                                      },
                                      child: Text(
                                        texts.signIn.registerNow,
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
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _submit(BuildContext context) async {
    final SignInBLoC bloc = signInProvider.read;
    final FavoritesBloc favoritesBloc = favoritesProvider.read;

    final result = await bloc.submit();

    if (!bloc.disposed) {
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
