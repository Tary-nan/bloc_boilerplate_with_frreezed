
import 'package:architecture_bloc/src/features/forms/models/models.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register.freezed.dart';


@freezed
class RegisterFormz with _$RegisterFormz, FormzMixin{

  RegisterFormz._();
  factory RegisterFormz({
    required FirstName firstName,
    required Phone phone,
    required Email email,
  }) = _RegisterFormz;

  @override
  List<FormzInput> get inputs => [firstName, email, phone];
}
