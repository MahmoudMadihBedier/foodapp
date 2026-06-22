import 'package:flutter/material.dart';
import 'package:foodapp/core/constans/app_color.dart';

class Customtextform extends StatelessWidget {
  final String hint;
  final bool isPassword;
    final String? Function(String?)? validator;

  const Customtextform({
    super.key,
    required this.hint,
    required this.isPassword,
    this.validator,
  });

  String? _defaultValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Please enter your $hint";
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorHeight: 10,
      cursorColor: ColorApp.primyColor,
      validator: validator ?? _defaultValidator,

      obscureText: isPassword,
      decoration: InputDecoration(
        hint: Text(hint),
        suffix: isPassword ? Icon(Icons.password_outlined) : null,
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorApp.primyColor),
        ),
      ),
    );
  }
}
