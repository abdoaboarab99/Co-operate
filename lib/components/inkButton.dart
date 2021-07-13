import 'package:flutter/material.dart';

Widget inkButton({Icon icon, Function onPressed}) {
  return Ink(
    decoration: ShapeDecoration(
      color: Color(0xff79c3d4),
      shape: CircleBorder(),
      shadows: [
        BoxShadow(
          spreadRadius: 1.5,
          color: Color(0xff79c3d4).withOpacity(.9),
          offset: Offset(0, 1),
        ),
      ],
    ),
    child: IconButton(
      icon: icon,
      onPressed: onPressed,
    ),
  );
}
