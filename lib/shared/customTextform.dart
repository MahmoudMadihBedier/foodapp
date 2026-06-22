import 'package:flutter/material.dart';
import 'package:foodapp/core/constans/app_color.dart';

class Customtextform extends StatefulWidget {
  TextEditingController textcontroler=TextEditingController();
  final String hint;
  final bool isPassword;
    final String? Function(String?)? validator;

   Customtextform({
    super.key,
    required this.hint,
    required this.isPassword,
    required this.textcontroler,
    this.validator,
  });

  @override
  State<Customtextform> createState() => _CustomtextformState();
}

class _CustomtextformState extends State<Customtextform> {
  String? _defaultValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Please enter your ${widget.hint}";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textcontroler,
      cursorHeight: 10,
      cursorColor: ColorApp.primyColor,
      validator: widget.validator ?? _defaultValidator,

      obscureText: widget.isPassword,
      decoration: InputDecoration(
        hint: Text(widget.hint),
        suffix: widget.isPassword ? Icon(Icons.password_outlined) : null,
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
