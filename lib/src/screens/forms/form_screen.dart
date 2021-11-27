import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'styles.dart';

class FormScreen extends StatelessWidget {
  final List<Widget> children;
  final GlobalKey<FormState>? formKey;
  final String title;

  const FormScreen({
    Key? key,
    this.title = '',
    this.formKey,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(title, style: Styles.formTile),
                Expanded(
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: children,
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
