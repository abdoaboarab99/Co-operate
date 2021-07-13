import 'package:flutter/material.dart';

Widget logInButton({String title, Function onPressed, Widget icon}) {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xff79C3D4),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
      borderRadius: BorderRadius.circular(8),
    ),
    child: TextButton(
      onPressed: onPressed,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              icon,
            ],
          ),
        ),
      ),
    ),
  );
}
