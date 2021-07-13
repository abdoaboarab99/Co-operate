import 'package:co_operate/components/doctorBottomSheet.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> drInfo = [
  {
    'image': AssetImage('assets/images/splash.jpg'),
    'name': 'Dr.Ahmed Mohamed',
    'description': 'Heart Surgery - Neuron Hospital',
    'rate': '5.6',
    'hours': ' 10 am - 7 pm',
  },
  {
    'image': AssetImage('assets/images/createAccount.jpg'),
    'name': 'Dr.Sara Arafat',
    'description': 'Dentist - Dental Hospital',
    'rate': '10',
    'hours': ' 10 am - 10 pm',
  },
  {
    'image': AssetImage('assets/images/hiDear.jpg'),
    'name': 'Dr.Mohamed Ahmed',
    'description': 'Ophthalmologist - clinic',
    'rate': '8',
    'hours': ' 11 am - 8 pm',
  },
];

class DoctorCard extends StatefulWidget {
  DoctorCard({this.description, this.hours, this.name, this.rate, this.image});

  final String name;
  final String description;
  final String rate;
  final String hours;
  final AssetImage image;

  // final Function onTap;

  @override
  _DoctorCardState createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          context: context,
          builder: (context) => DoctorDetails(),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width * .25,
              child: Image(
                image: widget.image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text(
                    widget.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    widget.description,
                    style: TextStyle(
                      color: Colors.grey.withOpacity(.8),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              widget.rate,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff79c3d4),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.watch_later_rounded,
                              color: Colors.yellowAccent,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              widget.hours,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff79c3d4),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
