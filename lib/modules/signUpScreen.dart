import 'package:co_operate/components/logInButton.dart';
import 'package:co_operate/components/customFormField.dart';
import 'package:co_operate/components/signUpHeader.dart';
import 'package:co_operate/modules/logInScreen.dart';
import 'package:co_operate/modules/verificationScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;
  TextEditingController _nameController;
  TextEditingController _emailController;
  TextEditingController _phoneController;
  TextEditingController _passwordController;
  TextEditingController _confirmPasswordController;
  var signUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Form(
            key: signUpFormKey,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                signUpHeader(
                  header: 'Create Account',
                  text: 'Already have an account?',
                  richText: 'Sign In!',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogInScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                customFormField(
                  autofocus: true,
                  controller: _nameController,
                  labelText: 'User Name',
                  obscureText: false,
                  keyBordType: TextInputType.name,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'User Name can\'t be empty';
                    }
                    return null;
                  },
                ),
                customFormField(
                  controller: _emailController,
                  labelText: 'Email',
                  obscureText: false,
                  keyBordType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Email can\'t be empty';
                    }
                    return null;
                  },
                ),
                customFormField(
                  controller: _phoneController,
                  labelText: 'Phone',
                  obscureText: false,
                  keyBordType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Phone can\'t be empty';
                    }
                    return null;
                  },
                ),
                customFormField(
                  controller: _passwordController,
                  labelText: 'Password',
                  obscureText: isPasswordHidden,
                  icon: IconButton(
                    icon: isPasswordHidden
                        ? Icon(
                            Icons.visibility_off,
                            color: Colors.grey.withOpacity(.4),
                          )
                        : Icon(
                            Icons.visibility,
                            color: Colors.grey.withOpacity(.4),
                          ),
                    onPressed: () {
                      setState(
                        () {
                          isPasswordHidden = !isPasswordHidden;
                        },
                      );
                    },
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Password can\'t be empty';
                    }
                    return null;
                  },
                ),
                customFormField(
                  controller: _confirmPasswordController,
                  labelText: 'Confirm Password',
                  obscureText: isConfirmPasswordHidden,
                  icon: IconButton(
                    icon: isConfirmPasswordHidden
                        ? Icon(
                            Icons.visibility_off,
                            color: Colors.grey.withOpacity(.4),
                          )
                        : Icon(
                            Icons.visibility,
                            color: Colors.grey.withOpacity(.4),
                          ),
                    onPressed: () {
                      setState(
                        () {
                          isConfirmPasswordHidden = !isConfirmPasswordHidden;
                        },
                      );
                    },
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                logInButton(
                  icon: Container(),
                  title: "Sign Up",
                  onPressed: () {
                    if (signUpFormKey.currentState.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerificationScreen(),
                        ),
                      );
                    }
                  },
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
