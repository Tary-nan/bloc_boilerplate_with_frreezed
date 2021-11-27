import 'package:formz/formz.dart';

enum PhoneValidationError {empty}

class Phone extends FormzInput<String, PhoneValidationError>{

  Phone.dirty([String value = '']) : super.dirty(value);
  Phone.pure() : super.pure('');

  @override
  PhoneValidationError? validator(String value) {
    return value.trim().isNotEmpty ? null : PhoneValidationError.empty;
  }

}