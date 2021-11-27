import 'package:formz/formz.dart';

enum EmailValidationError {empty}

class Email extends FormzInput<String, EmailValidationError>{

  Email.dirty([String value = '']) : super.dirty(value);
  Email.pure() : super.pure('');

  @override
  EmailValidationError? validator(String value) {
    return value.trim().isNotEmpty ? null : EmailValidationError.empty;
  }

}