import 'package:flutter/material.dart';

Widget searchField(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 55,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      color: Colors.white,
    ),
    child: TextField(
      obscureText: false,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'search here...',
        hintStyle: TextStyle(
          fontSize: 20,
          color: Colors.grey.withOpacity(.7),
        ),
        prefixIcon: Icon(
          Icons.search_outlined,
          size: 30,
          color: Color(0xff79c3d4),
        ),
      ),
    ),
  );
}
