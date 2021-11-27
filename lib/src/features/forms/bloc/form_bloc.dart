import 'package:architecture_bloc/src/features/forms/event/form_event.dart';
import 'package:architecture_bloc/src/features/forms/models/models.dart';
import 'package:architecture_bloc/src/features/forms/state/form_state.dart';
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';

class FormBloc extends Bloc<FormEvent, FormzState> {
  FormBloc()
      : super(FormzState(
            form: RegisterFormz(
                firstName: FirstName.pure(),
                email: Email.pure(),
                phone: Phone.pure()),
            status: FormzStatus.pure));

  @override
  Stream<FormzState> mapEventToState(FormEvent event) async* {
    yield event.when(formFirstNameChange: (value) {
      /// EVENT : formFirstNameChange
      final firstName = FirstName.dirty(value);
      return state.copyWith(
        form: state.form.copyWith(
          firstName: firstName,
        ),
      );
    }, formEmailChange: (email) {
      /// EVENT : formEmailChange
      final value = Email.dirty(email);
      var update = state.form.copyWith(email: value);
      return state.copyWith(
        form: update,
      );
    }, formPhoneChange: (phone) {
      /// EVENT : formPhoneChange
      final value = Phone.dirty(phone);
      var update = state.form.copyWith(phone: value);
      return state.copyWith(
        form: update,
      );
    });
  }
}
