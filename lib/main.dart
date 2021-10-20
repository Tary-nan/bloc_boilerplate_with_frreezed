// import 'package:architecture_bloc/src/app2.dart';
import 'package:architecture_bloc/src/app.dart';
// import 'package:architecture_bloc/src/app3.dart';
// import 'package:architecture_bloc/src/features/kleak/app.dart';
// import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
// import 'package:user_repository/user_repository.dart';

void main() {
  // Bloc.observer = SimpleBlocObserver();

  runApp(const App());
  // runApp(App(
  //   authenticationRepository: AuthenticationRepository(),
  //   userRepository: UserRepository(),
  // ));
}

class SimpleBlocObserver extends BlocObserver {
  final console = Logger();
  // @override
  // void onCreate(BlocBase bloc) {
  //   super.onCreate(bloc);
  //   // console.i('onCreate -- bloc: ${bloc.runtimeType}');
  // }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    console.i('onEvent -- bloc: ${bloc.runtimeType}, event: $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    console.i('onChange -- bloc: ${bloc.runtimeType}, change: $change');
  }

  // @override
  // void onTransition(Bloc bloc, Transition transition) {
  //   super.onTransition(bloc, transition);
  //   // console.i('onTransition -- bloc: ${bloc.runtimeType}, transition: $transition');
  // }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    console.e('onError -- bloc: ${bloc.runtimeType}, error: $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    console.i('onClose -- bloc: ${bloc.runtimeType}');
  }
}
