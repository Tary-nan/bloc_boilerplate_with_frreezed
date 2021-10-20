import 'package:formz/formz.dart';

enum PasswordValidationError {empty}

class Password extends FormzInput<String, PasswordValidationError>{

  Password.dirty([String value = '']) : super.dirty(value);
  Password.pure() : super.pure('');

  @override
  PasswordValidationError? validator(String value) {
    return value.trim().isNotEmpty ? null : PasswordValidationError.empty;
  }

}