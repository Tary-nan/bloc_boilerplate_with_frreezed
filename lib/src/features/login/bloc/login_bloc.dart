import 'package:architecture_bloc/src/features/login/model.dart';
import 'package:architecture_bloc/src/features/login/models/events/login_event.dart';
import 'package:architecture_bloc/src/features/login/models/states/login_state.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  late AuthenticationRepository _authenticationRepository;

  LoginBloc({required AuthenticationRepository authenticationRepository})
      : super(LoginState(
            username: Username.pure(),
            password: Password.pure(),
            status: FormzStatus.pure)) {
    _authenticationRepository = authenticationRepository;
    on<LoginEvent>(_loginEventCallback);
  }

  void _loginEventCallback(LoginEvent event, emit) async {
    await event.when(
      /// EVENT : PasswordChange
      ///
      loginPasswordChange: (String value) {
      final password = Password.dirty(value);
      emit(state.copyWith(
          password: password,
          status: Formz.validate([state.username, password])));
    }, 
     /// EVENT : UsernameChange
    ///
    loginUsernameChange: (String value) {
      final username = Username.dirty(value);
      emit(state.copyWith(
          username: username,
          status: Formz.validate([username, state.password])));
    }, 
     /// EVENT : Submitted
    ///
    loginSubmitted: () async {
      if (state.status.isValidated) {
        emit(state.copyWith(status: FormzStatus.submissionInProgress));
        try {
          await _authenticationRepository
              .logIn(
                  username: state.username.value,
                  password: state.password.value)
              .whenComplete(() =>
                  emit(state.copyWith(status: FormzStatus.submissionSuccess)));
        } catch (_) {
          emit(state.copyWith(status: FormzStatus.submissionFailure));
        }
      }
    });
  }
}
