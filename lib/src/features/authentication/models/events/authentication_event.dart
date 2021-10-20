import 'package:authentication_repository/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.freezed.dart';


@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  factory AuthenticationEvent.statusChanged(AuthenticationStatus status) = _StatusChanged;
  factory AuthenticationEvent.logoutRequested() = _LogoutRequested;
	
}
