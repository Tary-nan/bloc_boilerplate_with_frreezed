import 'package:architecture_bloc/src/features/login/bloc/login_bloc.dart';
import 'package:architecture_bloc/src/features/login/models/events/login_event.dart';
import 'package:architecture_bloc/src/features/login/models/states/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:logger/logger.dart';

class LoginFrom extends StatelessWidget {
  const LoginFrom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          Logger().i(state.status);
          switch (state.status) {
            case FormzStatus.submissionSuccess:
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                    const SnackBar(content: Text('Autehtication success')));
              break;
            case FormzStatus.submissionFailure:
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                    const SnackBar(content: Text('Autehtication Failure')));
              break;
            case FormzStatus.submissionInProgress:
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                    const SnackBar(content: Text('Autehtication Failure')));
              break;
            default:
          }
        },
        child: Align(
          alignment: const Alignment(0, -1 / 3),
          child: Column(
            children: const [
              _UsernameInput(),
              Padding(padding: EdgeInsets.all(12)),
              _PasswordInput(),
              Padding(padding: EdgeInsets.all(12)),
              _LoginButton(),
            ],
          ),
        ));
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (prev, current) => prev.password != current.password,
      builder: (context, state) {
        final error = state.username.invalid ? 'error' : null;
        Logger().w('message  password: $error');
        return TextField(
          obscureText: true,
          key: const Key('password_key'),
          onChanged: (password) => context
              .read<LoginBloc>()
              .add(LoginEvent.loginPasswordChange(password)),
          decoration:
              InputDecoration(label: const Text('password'), errorText: error),
        );
      },
    );
  }
}

class _UsernameInput extends StatelessWidget {
  const _UsernameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (prev, current) => prev.username != current.username,
      builder: (context, state) {
        final error = state.username.invalid ? 'error' : null;
        Logger().w('message username  : $error');
        return TextField(
          key: const Key('username_key'),
          onChanged: (username) => context
              .read<LoginBloc>()
              .add(LoginEvent.loginUsernameChange(username)),
          decoration:
              InputDecoration(label: const Text('username'), errorText: error),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (prev, current) => prev.status != current.status,
      builder: (context, state) {
        Logger().d(state.status);
        return ElevatedButton(
            onPressed: state.status == FormzStatus.pure || state.status == FormzStatus.invalid
                ? null
                : () {
                    context.read<LoginBloc>().add(LoginEvent.loginSubmitted());
                  },
            child: const Text('Login'));
      },
    );
  }
}
