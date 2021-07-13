import 'package:flutter/material.dart';

Widget connectButton({DecorationImage decorationImage, String text}) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
      borderRadius: BorderRadius.circular(8),
      color: Color(0xff79C3D4),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            image: decorationImage,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}
