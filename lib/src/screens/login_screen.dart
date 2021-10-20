import 'package:architecture_bloc/src/features/login/bloc/login_bloc.dart';
import 'package:architecture_bloc/src/widgets/form.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginScreen());
  }

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: BlocProvider(
          create: (context) => LoginBloc(
              authenticationRepository:
                  RepositoryProvider.of<AuthenticationRepository>(context)),
          child: const LoginFrom(),
        ),
      ),
    );
  }
}
