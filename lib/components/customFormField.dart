import 'package:flutter/material.dart';

Widget customFormField({
  String labelText,
  Function onTap,
  bool obscureText,
  TextInputType keyBordType = TextInputType.text,
  Widget icon,
  TextEditingController controller,
  Function validator,
  bool autofocus = false,
}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 40.0),
    child: TextFormField(
      autofocus: autofocus,
      validator: validator,
      keyboardType: keyBordType,
      onTap: onTap,
      obscureText: obscureText,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff79c3d4),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 18,
          color: Colors.black.withOpacity(.5),
        ),
        suffixIcon: icon,
      ),
    ),
  );
}
