import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final bool? obscureText;
  CustomTextField({@required this.controller, this.prefixIcon, @required this.hintText, @required this.hintStyle, @required this.style,this.obscureText=false});
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: obscureText!,
      style: style,
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: hintStyle),
    );
  }
}
