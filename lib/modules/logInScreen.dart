import 'package:co_operate/components/logInButton.dart';
import 'package:co_operate/components/customFormField.dart';
import 'package:co_operate/components/signUpHeader.dart';
import 'package:co_operate/modules/signUpScreen.dart';
import 'package:flutter/material.dart';
import 'hiDearScreen.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool isHidden = true;
  TextEditingController _emailController;
  TextEditingController _passwordController;
  var loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeefef),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Form(
                  key: loginFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      signUpHeader(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        header: 'Sign In',
                        text: 'Don\'t have an account?',
                        richText: ' Sign Up!',
                      ),
                      customFormField(
                        autofocus: true,
                        controller: _emailController,
                        labelText: "Email",
                        keyBordType: TextInputType.emailAddress,
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Email required';
                          }
                          return null;
                        },
                      ),
                      customFormField(
                        controller: _passwordController,
                        labelText: 'Password',
                        obscureText: isHidden,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Password required';
                          }
                          return null;
                        },
                        icon: IconButton(
                          onPressed: () {
                            setState(
                              () {
                                isHidden = !isHidden;
                              },
                            );
                          },
                          icon: isHidden
                              ? Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey.withOpacity(.4),
                                )
                              : Icon(
                                  Icons.visibility,
                                  color: Colors.grey.withOpacity(.4),
                                ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff79c3d4),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              logInButton(
                icon: Container(),
                title: 'Sign in',
                onPressed: () {
                  if (loginFormKey.currentState.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HiDearScreen(),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
