import 'package:formz/formz.dart';

enum FirstNameValidationError {empty}

class FirstName extends FormzInput<String, FirstNameValidationError>{

  FirstName.dirty([String value = '']) : super.dirty(value);
  FirstName.pure() : super.pure('');

  @override
  FirstNameValidationError? validator(String value) {
    return value.trim().isNotEmpty ? null : FirstNameValidationError.empty;
  }

}