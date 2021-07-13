import 'package:co_operate/components/customFormField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _nameController;
  TextEditingController _emailController;
  TextEditingController _passwordController;
  TextEditingController _phoneController;
  TextEditingController _addressController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeefef),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1 / 4,
                  color: Colors.transparent,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1 / 6,
                  color: Color(0xff79c3d4),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_sharp,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.edit_sharp,
                                size: 25,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Edit',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: MediaQuery.of(context).size.width / 3,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      'assets/images/abdelrahman.jpeg',
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    customFormField(
                      controller: _nameController,
                      labelText: 'Name',
                      obscureText: false,
                      keyBordType: TextInputType.name,
                    ),
                    customFormField(
                      controller: _emailController,
                      labelText: 'Email',
                      obscureText: false,
                      keyBordType: TextInputType.emailAddress,
                    ),
                    customFormField(
                      controller: _passwordController,
                      labelText: 'Password',
                      obscureText: true,
                      keyBordType: TextInputType.visiblePassword,
                    ),
                    customFormField(
                      controller: _phoneController,
                      labelText: 'Phone',
                      obscureText: false,
                      keyBordType: TextInputType.number,
                    ),
                    customFormField(
                      controller: _addressController,
                      labelText: 'Address',
                      obscureText: false,
                      keyBordType: TextInputType.name,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
