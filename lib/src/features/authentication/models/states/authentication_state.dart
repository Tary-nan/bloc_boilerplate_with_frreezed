
import 'package:authentication_repository/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'authentication_state.freezed.dart';


@freezed
class AuthenticationState with _$AuthenticationState {
  // authenticated

  factory AuthenticationState.authenticated({
    required User user,
    required AuthenticationStatus status
  }) = _Authenticated;

  // unauthenticated
  factory AuthenticationState.unauthenticated({
    required AuthenticationStatus status
  }) = _Unauthenticated;

  // unknown
  factory AuthenticationState.unknown() = _Unknown;
	
}
