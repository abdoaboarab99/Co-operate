import 'package:co_operate/components/logInButton.dart';
import 'package:custom_horizontal_calendar/date_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_horizontal_calendar/custom_horizontal_calendar.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({Key key}) : super(key: key);

  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  DateTime chosen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: Color(0xff79c3d4),
        title: Text(
          'Appointment',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHorizontalCalendar(
                onDateChoosen: (date) {
                  setState(() {
                    chosen = date;
                  });
                },
                inintialDate: DateTime.now(),
                height: 120,
                builder: (context, i, d, width) {
                  if (i != 2)
                    return DateRow(
                      d,
                      width: width,
                      selectedDayStyle: TextStyle(
                        color: Color(0xff79c3d4),
                        fontSize: 30,
                      ),
                      selectedDayOfWeekStyle: TextStyle(
                        color: Color(0xff79c3d4),
                        fontSize: 20,
                      ),
                      selectedMonthStyle: TextStyle(
                        color: Color(0xff79c3d4),
                        fontSize: 20,
                      ),
                    );
                  else
                    return DateRow(
                      d,
                      background: Color(0xff79c3d4),
                      selectedDayStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                      selectedDayOfWeekStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      selectedMonthStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      width: width,
                    );
                },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Available Time',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff79c3d4),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 55,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        appointmentTime(time: '10:00 Am'),
                        appointmentTime(time: '12:00 Pm'),
                        appointmentTime(time: '2:00 Pm'),
                        appointmentTime(time: '4:00 Pm'),
                        appointmentTime(time: '6:00 Pm'),
                      ],
                    ),
                  ),
                ],
              ),
              logInButton(
                title: 'Check Appointment',
                icon: Container(),
                onPressed: () {},
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Note:',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'You can only cancel your appointment 24 hours before it\'s time.',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget appointmentTime({
  String time,
}) {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: MaterialButton(
      elevation: 3,
      height: 55,
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        time,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      color: Color(0xff79c3d4),
    ),
  );
}
