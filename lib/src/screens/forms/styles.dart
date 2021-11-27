import 'package:flutter/material.dart';

class Styles {
  static double formRadius = 20;
  static double hzPadding = 37;
  static double vtFormPadding = 18;

  static Color primaryColor = const Color(0xff00b27f);
  static Color secondaryColor = const Color(0xff007b80);
  static Color baseColor = const Color(0xff4a4a4a);

  static Color lightGrayColor = const Color(0xffe6e6e6);
  static Color grayColor = const Color(0xff505050);
  static Color darkGrayColor = const Color(0xff2d2d2d);

  static Color helperColor = const Color(0xff787878);
  static Color optionalColor = const Color(0xffA7A7A7);
  static Color errorColor = const Color(0xffea6060);

  static const Color primary =
      Color.fromARGB(255, 16, 201, 85); // background: #C9420A;

  static const Color bodyColor = Color.fromARGB(255, 239, 250, 255);
  static const Color liteDark = Color(0x23000000);
  static const Color white = Colors.white;

  static TextStyle poppins =
      const TextStyle(fontFamily: 'Poppins', letterSpacing: .3);

  static TextStyle helperStyle = poppins.copyWith(
      fontSize: 16,
      color: helperColor,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w500);
  static TextStyle inputStyle = poppins.copyWith(
      fontSize: 16,
      color: Styles.baseColor,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w500);

  static TextStyle submitButtonText = poppins.copyWith(
      fontSize: 16,
      color: Colors.white,
      letterSpacing: 0.44,
      fontWeight: FontWeight.bold);

  static TextStyle labelOptional = poppins.copyWith(
      fontSize: 8,
      color: optionalColor,
      fontWeight: FontWeight.bold,
      letterSpacing: 1);
  static TextStyle labelNotValid = poppins.copyWith(
      fontSize: 8,
      color: errorColor,
      fontWeight: FontWeight.bold,
      letterSpacing: 1);
  static TextStyle labelRequired = poppins.copyWith(
      fontSize: 6,
      color: grayColor,
      fontWeight: FontWeight.bold,
      letterSpacing: .5);

  static TextStyle label = poppins.copyWith(
      fontSize: 13,
      color: Colors.black,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w500);

  static TextStyle labelSelect = poppins.copyWith(
      fontSize: 12,
      color: const Color(0xFFBABABA),
      letterSpacing: 1,
      fontWeight: FontWeight.w500);

  static TextStyle labelBtnSheet = poppins.copyWith(
      fontSize: 15, letterSpacing: .3, fontWeight: FontWeight.w500);

  static TextStyle labelImageBank = poppins.copyWith(
      fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600);

  static TextStyle formTile = poppins.copyWith(
      fontSize: 15,
      color: const Color(0xff333333),
      fontWeight: FontWeight.bold);

  static TextStyle formError = poppins.copyWith(
      fontSize: 12,
      color: errorColor,
      fontStyle: FontStyle.italic,
      letterSpacing: 0.38,
      fontWeight: FontWeight.w500);

  static TextStyle inputLabel = poppins.copyWith(
      fontSize: 16,
      color: Styles.baseColor,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w600);

  static InputDecoration getInputDecoration({String? helper}) {
    return InputDecoration(
      fillColor: Colors.grey.withOpacity(.1),
      filled: true,
      helperStyle: Styles.helperStyle,
      // counter: Text('counter...'),
      // contentPadding: EdgeInsets.zero,
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Styles.secondaryColor)),
      errorBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Styles.errorColor)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Styles.lightGrayColor),
          gapPadding: 2.0),
      border: const OutlineInputBorder(
        gapPadding: 2.0,
      ),
      errorStyle: const TextStyle(color: Colors.transparent),
      helperText: '',
      hintText: helper,
      hintStyle: Styles.helperStyle,
    );
  }
}
