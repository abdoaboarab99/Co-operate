import 'package:co_operate/components/medicineCard.dart';
import 'package:co_operate/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({Key key}) : super(key: key);

  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeefef),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: MediaQuery.of(context).size.width * .45,
                  height: 40,
                  child: Row(
                    children: [
                      Icon(
                        Icons.search_rounded,
                        color: Colors.black54,
                        size: 35,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.info_outline_rounded,
                        color: Colors.black54,
                        size: 35,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/images/abdelrahman.jpeg'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Hi, Abdelrahman !',
                style: KSymptomsTextStyle.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.6),
                              offset: Offset(1, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          color: Colors.white),
                      width: MediaQuery.of(context).size.width * .35,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 20,
                                    child: Icon(
                                      Icons.featured_play_list_outlined,
                                      color: Color(0xff79c3d4),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Your Recipe',
                                    style: KSymptomsTextStyle.copyWith(
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 50,
                      height: 40,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Image(
                                image: AssetImage(
                                  'assets/icons/lightHeart.png',
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 50,
                              height: 25,
                              child: Image(
                                image: AssetImage(
                                  'assets/icons/audio-waves.png',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Icon(
                        Icons.featured_play_list,
                        size: 40,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Icon(
                        Icons.watch_later_sharp,
                        size: 40,
                        color: Color(0xff8D8D8D),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Your Recipe',
                style: KSymptomsTextStyle.copyWith(
                  color: Color(0xff524D4D),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Written by',
                      style: TextStyle(
                        color: Color(0xff524D4D),
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: '  Dr. Ahmed',
                      style: TextStyle(
                        color: Color(0xff79c3d4),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: medicineData.length,
                    itemBuilder: (context, index) {
                      return MedicineCard(
                        image: medicineData[index]['image'],
                        color: medicineData[index]['color'],
                        dose: medicineData[index]['dose'],
                        drug: medicineData[index]['drug'],
                        duration: medicineData[index]['duration'],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
