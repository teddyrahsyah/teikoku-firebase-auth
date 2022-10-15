import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool obscureText;
  final IconData icon;
  final EdgeInsets margin;

  const CustomTextFormField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  final Color formColor = const Color(0xff3A2618);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: formColor,
              ),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: formColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:  BorderSide(
                color: formColor,
              ),
            ),
            prefixIcon: Icon(
              icon,
              color: formColor,
            ),
            prefixIconColor: formColor,
          ),
        ),
      ),
    );
  }
}
