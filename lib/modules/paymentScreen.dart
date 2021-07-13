import 'package:co_operate/components/customFormField.dart';
import 'package:flutter/material.dart';

import 'doneScreen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  var paymentFormKey = GlobalKey<FormState>();
  TextEditingController _passwordController;
  TextEditingController _countryController;
  TextEditingController _stateController;
  TextEditingController _cityController;
  TextEditingController _zipController;
  TextEditingController _cardController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Form(
              key: paymentFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      'Add Shipping Information',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  customFormField(
                    controller: _passwordController,
                    labelText: 'Current Password',
                    autofocus: true,
                    keyBordType: TextInputType.visiblePassword,
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .4,
                        child: customFormField(
                          controller: _countryController,
                          labelText: 'Country',
                          keyBordType: TextInputType.visiblePassword,
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter your Country';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .4,
                        child: customFormField(
                          controller: _stateController,
                          labelText: 'State',
                          keyBordType: TextInputType.visiblePassword,
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter your state';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .4,
                        child: customFormField(
                          controller: _cityController,
                          labelText: 'City',
                          keyBordType: TextInputType.visiblePassword,
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter your city';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .4,
                        child: customFormField(
                          controller: _zipController,
                          labelText: 'Zip',
                          keyBordType: TextInputType.number,
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter your zip';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  customFormField(
                    controller: _cardController,
                    obscureText: true,
                    labelText: 'Card numbers',
                    keyBordType: TextInputType.number,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter card numbers';
                      }
                      return null;
                    },
                  ),
                  Text(
                    ' To Pay',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  customListTile(
                    text: 'cost',
                    trailingText: "200",
                  ),
                  customListTile(
                    text: 'Delivery Cost',
                    trailingText: "50",
                  ),
                  Divider(
                    height: .5,
                    color: Colors.grey.withOpacity(.6),
                  ),
                  customListTile(
                    text: 'Total',
                    trailingText: '250',
                    color: Color(0xff79c3d4),
                    fontWeight: FontWeight.w900,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                        color: Color(0xff79c3d4),
                        elevation: 5,
                        shape: CircleBorder(),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .7,
                        child: MaterialButton(
                          onPressed: () {
                            if (paymentFormKey.currentState.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DoneScreen(),
                                ),
                              );
                            }
                          },
                          color: Color(0xff79c3d4),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Check',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget customListTile({
  String text,
  String trailingText,
  double fontSize = 20,
  Color color = Colors.black54,
  FontWeight fontWeight = FontWeight.w500,
}) {
  return ListTile(
    leading: Text(
      text,
      style: TextStyle(
        fontSize: 20,
        color: Colors.black54,
        fontWeight: fontWeight,
      ),
    ),
    trailing: Text(
      trailingText,
      style: TextStyle(
        fontSize: 20,
        color: color,
        fontWeight: fontWeight,
      ),
    ),
  );
}
