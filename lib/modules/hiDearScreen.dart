import 'package:co_operate/components/inkButton.dart';
import 'package:co_operate/components/knowMoreCard.dart';
import 'package:co_operate/components/requirementContainer.dart';
import 'package:co_operate/components/searchField.dart';
import 'package:co_operate/components/symptomCard.dart';
import 'package:co_operate/constants/constants.dart';
import 'package:co_operate/modules/logInScreen.dart';
import 'package:co_operate/modules/stayHomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HiDearScreen extends StatefulWidget {
  @override
  _HiDearScreenState createState() => _HiDearScreenState();
}

class _HiDearScreenState extends State<HiDearScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeefef),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LogInScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Log out',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xff79c3d4),
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      inkButton(
                        icon: Icon(
                          Icons.arrow_forward_outlined,
                          size: 25,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StayHomeScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
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
                  height: 30,
                ),
                Container(
                  child: Text(
                    'Symptoms',
                    style: KSymptomsTextStyle,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      symptomsCard(
                        context,
                        header: 'High Fever',
                        body: 'The fever rises above 37',
                        image: AssetImage('assets/images/highFever.jpg'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      symptomsCard(
                        context,
                        header: 'Headache',
                        body: 'A painful headache',
                        image: AssetImage('assets/images/headache.jpg'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      symptomsCard(
                        context,
                        header: 'Cough',
                        body: 'Cough with phlegm',
                        image: AssetImage('assets/images/cough.jpg'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                knowMoreCard(
                  context,
                  body: 'Stay at home to stop corona virus',
                  image: AssetImage(
                    'assets/images/hiDear.jpg',
                  ),
                  color: Color(0xff79c3d4).withOpacity(.9),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Requirements',
                  style: KSymptomsTextStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      requirementContainer(
                        context,
                        image: AssetImage('assets/images/requirementsOne.jpg'),
                      ),
                      requirementContainer(
                        context,
                        image: AssetImage('assets/images/requirementsTwo.jpg'),
                      ),
                      requirementContainer(
                        context,
                        image:
                            AssetImage('assets/images/requirementsThree.jpg'),
                      ),
                    ],
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
