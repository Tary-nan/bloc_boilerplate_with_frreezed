
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';


@freezed
class LoginEvent with _$LoginEvent {
  factory LoginEvent.loginPasswordChange(String password) = _LoginpasswordChange;
  factory LoginEvent.loginUsernameChange(String username) = _LoginUsernameChange;
  factory LoginEvent.loginSubmitted() = _LoginSubmitted;
}
