
import 'package:architecture_bloc/src/features/forms/models/models.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_state.freezed.dart';


@freezed
class FormzState with _$FormzState {
  factory FormzState({
    required RegisterFormz form,
    required FormzStatus status,
  }) = _FormzState;
	
}
