import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    Key key,
    @required this.textHintInput,
  }) : super(key: key);

  final String textHintInput;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: textHintInput,
    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  }
}


class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key key,
    @required this.passwordHintInput,
  }) : super(key: key);

  final String passwordHintInput;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: passwordHintInput,
    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  }
}

