import 'package:flutter/material.dart';

Widget stayHomeCard(BuildContext context, {String body, AssetImage image}) {
  return Container(
    width: double.infinity,
    height: 200,
    decoration: BoxDecoration(
      color: Color(0xff79c3d4),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Stay Home!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  body,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            height: 200,
            width: MediaQuery.of(context).size.width * .4,
          ),
          CircleAvatar(
            radius: 80,
            backgroundImage: image,
          ),
        ],
      ),
    ),
  );
}
