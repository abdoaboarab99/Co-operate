import 'package:flutter/material.dart';

Widget requirementContainer(BuildContext context, {AssetImage image}) {
  return Container(
    width: MediaQuery.of(context).size.width * .25,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(.9),
          offset: Offset(0, 2),
          spreadRadius: 1,
        ),
      ],
    ),
    child: Image(
      image: image,
      fit: BoxFit.cover,
    ),
  );
}
