import 'package:formz/formz.dart';

enum UsernameValidationError {empty}

class Username extends FormzInput<String, UsernameValidationError>{

  Username.dirty([String value = '']) : super.dirty(value);
  Username.pure() : super.pure('');

  @override
  UsernameValidationError? validator(String value) {
    return value.trim().isNotEmpty ? null : UsernameValidationError.empty;
  }

}