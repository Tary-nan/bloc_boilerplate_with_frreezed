import 'package:architecture_bloc/src/features/authentication/bloc/authentication_bloc.dart';
import 'package:architecture_bloc/src/features/authentication/models/events/authentication_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Builder(builder: (context) {
              final userId = context.select((AuthenticationBloc bloc) =>
                  bloc.state.maybeWhen(
                      orElse: () => null,
                      authenticated: (user, status) => user.id));
              return Text('userId : $userId');
            }),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              context.read<AuthenticationBloc>().add(AuthenticationEvent.logoutRequested());
            }, child: const Text('Deconnexion'))
          ],
        ),
      ),
    );
  }
}
