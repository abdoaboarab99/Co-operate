import 'package:co_operate/components/doctorCard.dart';
import 'package:co_operate/components/inkButton.dart';
import 'package:co_operate/components/knowMoreCard.dart';
import 'package:co_operate/components/searchField.dart';
import 'package:co_operate/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorScreen extends StatefulWidget {
  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeefef),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: inkButton(
                    icon: Icon(
                      Icons.arrow_forward_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Hi, Dear',
                    style: TextStyle(
                      color: Color(0xff79c3d4),
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Do you suffer from these symptoms or do you have different symptoms?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey.withOpacity(.7),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                searchField(context),
                SizedBox(
                  height: 20,
                ),
                knowMoreCard(
                  context,
                  body: 'All you need to know about covid 19',
                  image: AssetImage(
                    'assets/images/doctor.jpg',
                  ),
                  color: Color(0xfffDCE6F0),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Top Doctors',
                  style: KSymptomsTextStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 210,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: drInfo.length,
                    itemBuilder: (context, index) {
                      return DoctorCard(
                        image: drInfo[index]['image'],
                        description: drInfo[index]['description'],
                        hours: drInfo[index]['hours'],
                        rate: drInfo[index]['rate'],
                        name: drInfo[index]['name'],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
