// import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:co_operate/components/connectButton.dart';
import 'package:co_operate/components/logInButton.dart';
import 'package:co_operate/modules/logInScreen.dart';
import 'package:co_operate/modules/signUpScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeefef),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 2 / 5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/welcome.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Text(
                          'Welcome',
                          style: TextStyle(
                            color: Color(0xff79C3D4),
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic,
                            fontSize: 70,
                          ),
                        ),
                        margin: EdgeInsets.only(top: 15, bottom: 15),
                      ),
                      connectButton(
                        decorationImage: DecorationImage(
                          image: AssetImage('assets/icons/facebookLight.png'),
                          fit: BoxFit.cover,
                        ),
                        text: 'Connect with Facebook',
                      ),
                      connectButton(
                        decorationImage: DecorationImage(
                          image: AssetImage('assets/icons/google.png'),
                          fit: BoxFit.cover,
                        ),
                        text: 'Connect with Google',
                      ),
                      logInButton(
                        icon: Container(),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LogInScreen(),
                            ),
                          );
                        },
                        title: 'Log In',
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Don\'t have an account?',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                'Sign Up!',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff79C3D4),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
