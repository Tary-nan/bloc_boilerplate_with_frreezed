import 'package:architecture_bloc/src/features/forms/bloc/form_bloc.dart';
import 'package:architecture_bloc/src/screens/forms/forms.dart';
import 'package:architecture_bloc/src/screens/forms/widget/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/forms/event/form_event.dart';
import 'features/forms/state/form_state.dart';

class AppCamera extends StatelessWidget {
  AppCamera({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => FormBloc(),
        child: FormScreen(
          formKey: _formKey,
          title: 'Payment',
          children: [
            const SizedBox(height: 40),
            _buildText(
              FormKeys.firstName,
              required: true,
            ),
            UsernameInput(
              keys: FormKeys.email,
              required: true,
              type: InputType.email,
            ),
            _buildText(FormKeys.phone,
                required: true, type: InputType.telephone),
            SubmitButton(
                // isErrorVisible: isFormErrorVisible,
                child:
                    Text('Continue to payment', style: Styles.submitButtonText),
                // percentage: formCompletion,
                onPressed: () => _handleSubmit(context))
          ],
        ),
      ),
    );
  }

  TextInput _buildText(String key,
      {String? title,
      bool required = false,
      InputType type = InputType.text}) {
    title = title ?? _snakeToTitleCase(key);

    return TextInput(
      key: ValueKey(key),
      helper: title,
      type: type,
      initialValue: _getFormValue(key),
      onValidate: onItemValidate,
      onChange: onItemChange,
      isRequired: required,
      //  valueNotifier: ValueNotifier(value),
    );
  }

  void onItemValidate(String key, bool isValid, {required String value}) {
    onItemChange(key, value);
  }

  void onItemChange(String key, String value) {
    //  values[key] = value;
  }

  String _snakeToTitleCase(String value) {
    String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
    List<String> words = value.split("_");
    words = words.map((w) => capitalize(w)).toList();
    return words.join(" ");
  }

  String _getFormValue(String name) {
    // return values.containsKey(name) ? values[name] : "";
    return '';
  }

  _handleSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
    } else {
    }
  }
}

// ignore: must_be_immutable
class UsernameInput extends StatelessWidget {
  String? title;
  String? value;
  bool required;
  InputType type;
  String keys;

  UsernameInput(
      {Key? key, required this.keys,
      this.required = false,
      this.title,
      this.type = InputType.text,
      this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormBloc, FormzState>(
      buildWhen: (prev, current) =>
          prev.form.firstName != current.form.firstName,
      builder: (context, state) {
        // final error = state.form.firstName.invalid ? 'error' : null;

        debugPrint(state.form.status.toString());

        return TextInput(
          key: ValueKey(keys),
          isActive: true,
          helper: title ?? _snakeToTitleCase(keys),
          type: type,
          initialValue:
              '', // return values.containsKey(name) ? values[name] : "";
          onChange: (keys, username) => context
              .read<FormBloc>()
              .add(FormEvent.formFirstNameChange(username)),
          onValidate: (String key, bool isValid, {required String value}) {
            debugPrint('valide');
          },
          isRequired: required,
        );
      },
    );
  }

  String _snakeToTitleCase(String value) {
    String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
    List<String> words = value.split("_");
    words = words.map((w) => capitalize(w)).toList();
    return words.join(" ");
  }
}

// mixin FormMixin {
//   Map<String, bool> validInputsMap = {};
//   double formCompletion = 0;
//   bool isFormErrorVisible = false;

//   void onItemValidate(String name, bool isValid, {String value});
//   void onItemChange(String name, String value);

//   int countValidItems() {
//     int count = 0;
//     validInputsMap.forEach((name, isValid) {
//       if (isValid) count++;
//     });
//     return count;
//   }
// }
