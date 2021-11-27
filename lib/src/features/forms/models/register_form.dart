import 'package:architecture_bloc/src/features/forms/models/email.dart';
import 'package:architecture_bloc/src/features/forms/models/first_name.dart';
import 'package:architecture_bloc/src/features/forms/models/phone.dart';
import 'package:formz/formz.dart';

class RegisterForm with FormzMixin {
  const RegisterForm({
    required this.firstName,
    required this.email,
    required this.phone,
  });

  final FirstName firstName;
  final Email email;
  final Phone phone;

  @override
  List<FormzInput> get inputs => [firstName, email, phone];
}
