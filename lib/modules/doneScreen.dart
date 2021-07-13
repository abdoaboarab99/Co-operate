import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({Key key}) : super(key: key);

  @override
  _DoneScreenState createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  Color firstButtonColor = Colors.white38;
  Color secondButtonColor = Colors.white38;

  Color firstIconColor = Colors.black;
  Color secondIconColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.check,
              size: 220,
              color: Color(0xff79c3d4),
            ),
            Text(
              'Are you sure you want to submit this transfer ?',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          firstButtonColor = Color(0xff79c3d4);
                          firstIconColor = Colors.white;
                          secondButtonColor = Colors.white38;
                          secondIconColor = Colors.black;
                        },
                      );
                    },
                    shape: CircleBorder(),
                    color: firstButtonColor,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.check,
                        size: 40,
                        color: firstIconColor,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          secondButtonColor = Color(0xff79c3d4);
                          secondIconColor = Colors.white;
                          firstButtonColor = Colors.white38;
                          firstIconColor = Colors.black;
                        },
                      );
                    },
                    shape: CircleBorder(),
                    color: secondButtonColor,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.close,
                        size: 40,
                        color: secondIconColor,
                      ),
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
}
