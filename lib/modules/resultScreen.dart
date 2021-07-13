import 'package:co_operate/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:dart_random_choice/dart_random_choice.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  List<AssetImage> images = [
    AssetImage('assets/images/negative.jpeg'),
    AssetImage('assets/images/positive.jpg'),
  ];

  AssetImage randomImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .4,
              child: Center(
                child: randomImage == null
                    ? Text(
                        'Your photo will appear here.',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey,
                        ),
                      )
                    : Image(
                        image: randomImage,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      testResult(
                        checkBoxValue: randomImage == images[0]
                            ? false
                            : randomImage == images[1]
                                ? true
                                : false,
                        text: 'Positive',
                      ),
                      testResult(
                        checkBoxValue: randomImage == images[1]
                            ? false
                            : randomImage == images[0]
                                ? true
                                : false,
                        text: 'Negative',
                      ),
                      Text(
                        'Short Notes',
                        style: KSymptomsTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'X-rays shows the exist of the disease\'s impact on the lung and it\'s fibrosis. '
                        'You should talk to a doctor and keep healthy',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.withOpacity(.8),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: MaterialButton(
                          onPressed: () {
                            setState(
                              () {
                                randomImage = randomChoice(images);
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'Upload',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          color: Color(0xff79c3d4),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget testResult({String text, bool checkBoxValue = false}) {
  return Row(
    children: [
      Text(
        text,
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.w900,
        ),
      ),
      Checkbox(
        fillColor: MaterialStateProperty.all(
          Color(0xff79c3d4),
        ),
        value: checkBoxValue,
        onChanged: (value) {},
      ),
    ],
  );
}
