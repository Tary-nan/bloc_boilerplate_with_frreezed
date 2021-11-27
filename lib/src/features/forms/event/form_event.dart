
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_event.freezed.dart';


@freezed
class FormEvent with _$FormEvent {
  factory FormEvent.formFirstNameChange(String fistName) = FormFirstNameChange;
  factory FormEvent.formEmailChange(String fistName) = FormEmailChange;
  factory FormEvent.formPhoneChange(String fistName) = FormPhoneChange;
}
