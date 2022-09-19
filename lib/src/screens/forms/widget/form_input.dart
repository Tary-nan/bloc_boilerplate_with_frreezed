import 'package:flutter/material.dart';

import '../styles.dart';
import 'input_validator.dart';

class TextInput extends StatefulWidget {
  final String label;
  final String helper;
  final String? initialValue;
  final bool isRequired;
  final InputType type;
  final Function? onValidate;
  final Function? onChange;
  final bool isActive;
  final ValueNotifier? valueNotifier;

  const TextInput(
      {this.helper = '',
      this.isRequired = true,
      this.initialValue = '',
      this.type = InputType.text,
      this.onValidate,
      this.label = '',
      this.isActive = true,
      required this.onChange,
      required ValueKey<String> key,
      this.valueNotifier})
      : super(key: key);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool _isAutoValidating = false;
  var _isValid = false;

  String _value = '';
  String _errorText = '';

  String get _keyValue => (widget.key as ValueKey).value as String;

  @override
  initState() {
    super.initState();
    // Reset the valid state on notifier change
    if (widget.valueNotifier != null) {
      widget.valueNotifier!.addListener(() => _isValid = false);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  set isValid(bool isValid) {
    if (isValid != _isValid) {
      _isValid = isValid;
      widget.onValidate!(_keyValue, _isValid, value: _value);
    }
  }

  @override
  Widget build(BuildContext context) {
    //Validate based on initial value, only do this once.
    //We do it here instead of initState as it may trigger rebuilds up the tree

    if (_isValid) {
      if (widget.initialValue!.isNotEmpty) {
        _validateField(widget.initialValue);
      }
    }

    //build input
    return Container(
      padding: EdgeInsets.only(top: widget.label.isNotEmpty ? 15 : 0),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          // if (widget.label.isNotEmpty)
          //   Positioned(
          //       top: -24, child: Text(widget.label, style: Styles.label)),
          TextFormField(
            initialValue: _getInitialValue(),
            style: Styles.label,
            enabled: widget.isActive,
            onChanged: _handleChange,
            keyboardType: _setKeyboardType(),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: _validateField,
            decoration: Styles.getInputDecoration(helper: widget.helper),
          ),
          // Positioned(
          //   top: 6,
          //   left: 12,
          //   child: Text(_getLabel().toUpperCase(), style: Styles.label),
          // ),
          if (_errorText.isNotEmpty)
            Positioned(
              top: 8,
              right: 14,
              child:
                  Text(_errorText.toUpperCase(), style: Styles.labelNotValid),
            ),
        ],
      ),
    );
  }

  // String _getLabel() {
  //   var label = '';
  //   if (!widget.isRequired && _value.isEmpty) label = 'Optionnel';
  //   if (_value.isNotEmpty && widget.label.isEmpty ||
  //       _getInitialValue().isNotEmpty) return widget.helper;
  //   return label;
  // }

  String _getInitialValue() {
    // initial value established from parent
    if (widget.initialValue != null && widget.initialValue!.isNotEmpty) {
      return widget.initialValue!;
    }
    return '';
  }

  void _handleChange(String value) {
    // save value status
    _value = value;
    if (widget.onChange != null) {
      widget.onChange!(_keyValue, value);
    }

    // activate validation
    Future.delayed(const Duration(milliseconds: 100), () => setState(() {}));
    if (!_isAutoValidating) {
      setState(() {
        _isAutoValidating = true;
      });
    }
  }

  TextInputType? _setKeyboardType() {
    TextInputType type;
    switch (widget.type) {
      case InputType.email:
        type = TextInputType.emailAddress;
        break;
      case InputType.telephone:
        type = const TextInputType.numberWithOptions(decimal: true);
        break;
      case InputType.number:
        type =
            const TextInputType.numberWithOptions(signed: true, decimal: true);
        break;
      case InputType.text:
        return TextInputType.text;
      default:
        return null;
    }
    return type;
  }

  String? _validateField(String? value) {
    _value = value!;
    // if the value is required
    if (widget.isRequired && value.isEmpty) {
      isValid = false;
      _errorText = 'Réquis';
      // Update error label, wait a frame because
      // this was causing markAsBuild errors
      if (!mounted) {
        Future.delayed(const Duration(milliseconds: 17), () => setState(() {}));
      }

      return _errorText;
    }
    // if it is optional
    else if (!widget.isRequired && value.isEmpty) {
      isValid = true;
      _errorText = '';
      return null;
    }
    // validate when the input has a value
    else if (value.isNotEmpty && InputValidator.validate(widget.type, value)) {
      isValid = true;
      _errorText = '';
      return null;
    }
    // in other case, the item is not valid
    else {
      isValid = false;
      _errorText = 'Non valide';
      return _errorText;
    }
  }
}
