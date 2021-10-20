
import 'package:architecture_bloc/src/features/login/model.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';
// part 'login_state.g.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    required Username username,
    required Password password,
    required FormzStatus status,
  }) = _LoginState;
	
  // factory LoginState.fromJson(Map<String, dynamic> json) =>
			// _$LoginStateFromJson(json);
}
