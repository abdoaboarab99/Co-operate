import 'package:co_operate/modules/appointmentScreen.dart';
import 'package:co_operate/modules/chat/views/chat_view.dart';
import 'package:co_operate/modules/paymentScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({Key key}) : super(key: key);

  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .45,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr.Ahmed Mohamed',
                        style: TextStyle(
                          fontSize: 19,
                          color: Color(0xff4F4B4B),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Heart Surgery',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6A6868),
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        child: SmoothStarRating(
                          rating: rating,
                          isReadOnly: false,
                          size: 25,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          starCount: 5,
                          allowHalfRating: true,
                          spacing: 2.0,
                          borderColor: Colors.yellow[900],
                          color: Colors.yellow[900],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      contact(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatView(),
                            ),
                          );
                        },
                        icon: Icons.message,
                      ),
                      contact(
                        icon: Icons.call,
                      ),
                      contact(
                        icon: Icons.video_call,
                      ),
                    ],
                  ),
                )
              ],
            ),
            aboutDoctor(context, text: 'Personal Information'),
            aboutDoctor(context, text: 'Experience'),
            aboutDoctor(
              context,
              text: 'Available Time',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppointmentScreen(),
                  ),
                );
              },
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentScreen(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xff79c3d4),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Book',
                    style: TextStyle(fontSize: 25, color: Colors.white),
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

Widget contact({IconData icon, Function onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      child: Center(
        child: Icon(
          icon,
          size: 30,
          color: Color(0xff79c3d4),
        ),
      ),
    ),
  );
}

Widget aboutDoctor(BuildContext context, {String text, Function onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xff79c3d4),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: ListTile(
        leading: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.white,
        ),
      ),
    ),
  );
}
