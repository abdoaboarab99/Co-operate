import 'package:co_operate/components/inkButton.dart';
import 'package:co_operate/components/searchField.dart';
import 'package:co_operate/components/serviceCard.dart';
import 'package:co_operate/components/stayHomeCard.dart';
import 'package:co_operate/constants/constants.dart';
import 'package:co_operate/modules/hiDearScreen.dart';
import 'package:co_operate/modules/profileScreen.dart';
import 'package:co_operate/modules/recipeScreen.dart';
import 'package:co_operate/modules/resultScreen.dart';
import 'package:co_operate/modules/rooms_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'doctorScreen.dart';

class StayHomeScreen extends StatefulWidget {
  @override
  _StayHomeScreenState createState() => _StayHomeScreenState();
}

class _StayHomeScreenState extends State<StayHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeefef),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      inkButton(
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          size: 25,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HiDearScreen(),
                            ),
                          );
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileScreen()),
                          );
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/images/abdelrahman.jpeg'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                searchField(context),
                SizedBox(height: 20),
                stayHomeCard(
                  context,
                  body: 'Schedule a call and discuss the plan with a doctor',
                  image: AssetImage(
                    'assets/images/stayHome.jpg',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                stayHomeCard(
                  context,
                  body: 'Please, if you suffer from Corona symptoms , tell us!',
                  image: AssetImage(
                    'assets/images/hiDear.jpg',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'What do you need ?',
                  style: KSymptomsTextStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 220,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ServiceCard(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DoctorScreen(),
                                ),
                              );
                            },
                            icon: Image(
                              image: AssetImage(
                                'assets/icons/drug.png',
                              ),
                            ),
                            service: 'Diagnostic',
                          ),
                          ServiceCard(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RecipeScreen(),
                                ),
                              );
                            },
                            icon: Image(
                              image: AssetImage(
                                'assets/icons/medicine.png',
                              ),
                            ),
                            service: 'Medicine',
                          ),
                          ServiceCard(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResultScreen(),
                                ),
                              );
                            },
                            icon: Image(
                              image: AssetImage(
                                'assets/icons/heart.png',
                              ),
                            ),
                            service: 'Lab Work',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ServiceCard(
                            icon: Image(
                              image: AssetImage(
                                'assets/icons/ambulance.png',
                              ),
                            ),
                            service: 'Ambulance',
                          ),
                          ServiceCard(
                            icon: Image(
                              image: AssetImage(
                                'assets/icons/call.png',
                              ),
                            ),
                            service: 'Consultation',
                            onTap: () => Navigator.push(context,
                                MaterialPageRoute(builder: (_) => RoomsView())),
                          ),
                          ServiceCard(
                            icon: Image(
                              image: AssetImage(
                                'assets/icons/comment.png',
                              ),
                            ),
                            service: 'Questions',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/images/createAccount.jpg'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .7,
                        decoration: BoxDecoration(
                          color: Color(0xff5A807F),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hi , can I help you ?',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                Icons.more_horiz_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      )
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
