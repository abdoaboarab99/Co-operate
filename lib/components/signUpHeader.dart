import 'package:flutter/material.dart';

Widget signUpHeader(
    {String header, Function onPressed, String text, String richText}) {
  return Container(
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Image(
            image: AssetImage('assets/images/createAccount.jpg'),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                header,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.grey.withOpacity(.9),
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  TextButton(
                    onPressed: onPressed,
                    child: Text(
                      richText,
                      style: TextStyle(
                          color: Color(0xff79C3D4),
                          fontWeight: FontWeight.w900,
                          fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
