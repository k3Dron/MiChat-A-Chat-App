import 'package:flutter/material.dart';

class TextFieldDeco extends StatelessWidget {
  final bool privateText;
  final TextEditingController idInfo;
  final String hintTextDeco;
  TextFieldDeco({
    super.key,
    required this.hintTextDeco,
    required this.privateText,
    required this.idInfo});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: privateText,
      controller: idInfo,
      decoration: InputDecoration(
      hintText: hintTextDeco,
      filled: true,
      fillColor: Theme.of(context).colorScheme.inversePrimary,
      enabledBorder: OutlineInputBorder(
        borderRadius:const BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.tertiary,
        width: 1),
        ),
        focusedBorder: OutlineInputBorder(
        borderRadius:const BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.inversePrimary,
        width: 1),
        )
    )
    );
  }
}