import 'package:flutter/material.dart';

List<Map<String, dynamic>> cards = [
  {
    'Name': 'Diagnostic',
    'Icon': Image(
      image: AssetImage('assets/icons/ambulance.png'),
      fit: BoxFit.cover,
    ),
  },
  {
    'Name': 'Medicine',
    'Icon': Image(
      image: AssetImage('assets/icons/medicine.png'),
      fit: BoxFit.cover,
    ),
  },
  {
    'Name': 'Lab Work',
    'Icon': Image(
      image: AssetImage('assets/icons/drug.png'),
      fit: BoxFit.cover,
    ),
  },
  {
    'Name': 'Ambulance',
    'Icon': Image(
      image: AssetImage('assets/icons/ambulance.png'),
      fit: BoxFit.cover,
    ),
  },
  {
    'Name': 'Counsle',
    'Icon': Image(
      image: AssetImage('assets/icons/call.png'),
      fit: BoxFit.cover,
    ),
  },
  {
    'Name': 'Questions',
    'Icon': Image(
      image: AssetImage('assets/icons/comment.png'),
      fit: BoxFit.cover,
    ),
  },
];

class ServiceCard extends StatelessWidget {
  ServiceCard({this.icon, this.service, this.onTap});

  final String service;
  final Widget icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * .25,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 60,
              child: icon,
            ),
            Text(
              service,
              style: TextStyle(
                color: Color(0xff79c3d4),
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
