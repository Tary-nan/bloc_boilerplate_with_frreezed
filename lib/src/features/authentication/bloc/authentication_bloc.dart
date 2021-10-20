import 'dart:async';

import 'package:architecture_bloc/src/features/authentication/models/events/authentication_event.dart';
import 'package:architecture_bloc/src/features/authentication/models/states/authentication_state.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:user_repository/user_repository.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationRepository authenticationRepository;
  UserRepository userRepository;

  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  AuthenticationBloc({
    required this.authenticationRepository,
    required this.userRepository,
  }) : super(AuthenticationState.unknown()) {
    on<AuthenticationEvent>(_event);

     _authenticationStatusSubscription = authenticationRepository.status.listen(
      (status) => add(AuthenticationEvent.statusChanged(status)),
    );
  }


  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    authenticationRepository.dispose();
    return super.close();
  }

  void _event(AuthenticationEvent authEvent, emit) async{
    await authEvent.when(
        statusChanged: (AuthenticationStatus status) async {
          switch (status) {
            case AuthenticationStatus.unauthenticated:
              return emit(AuthenticationState.unauthenticated(status: AuthenticationStatus.unauthenticated));
            case AuthenticationStatus.authenticated:
              final user = await _tryGetUser();
              return emit(user != null
                  ? AuthenticationState.authenticated(user: user, status: AuthenticationStatus.authenticated )
                  : AuthenticationState.unauthenticated(status: AuthenticationStatus.unauthenticated));
            default:
              return emit(AuthenticationState.unknown());
          }
        },
        logoutRequested: () {
          authenticationRepository.logOut();
        });
  }

  Future<User?> _tryGetUser() async {
    try {
      final user = await userRepository.getUser();
      return user;
    } catch (_) {
      return null;
    }
  }
}
