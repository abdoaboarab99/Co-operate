import 'package:flutter/material.dart';

Widget symptomsCard(
  BuildContext context, {
  String header,
  String body,
  AssetImage image,
}) {
  return Container(
    margin: EdgeInsets.only(
      right: 10,
    ),
    height: 120,
    width: MediaQuery.of(context).size.width * .7,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: image,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  header,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff79c3d4),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  body,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey.withOpacity(.9),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
