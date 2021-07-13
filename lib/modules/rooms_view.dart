import 'package:co_operate/components/room_card.dart';
import 'package:co_operate/mixins/api_mixin.dart';
import 'package:flutter/material.dart';

class RoomsView extends StatelessWidget with ApiMixin {
  Future<void> getAllRooms() async {
    try {
      // final Map<String,dynamic> response = await get(url);
    } catch (error) {
      //TODO handle error open dialog
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: Color(0xff79c3d4),
        title: Text(
          'Rooms',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FutureBuilder(
        future: getAllRooms(),
        builder: (context, snapShot) {
          if (snapShot.connectionState == ConnectionState.waiting)
            return Center(
              child: CircularProgressIndicator(),
            );
          else
            return ListView(
              children: [
                ...List.generate(
                  5,
                  (index) => RoomCard(
                    username: 'Dr: Ahmed mohamed',
                    dateTime: DateTime.now(),
                    lastMessage: 'Hi,there i am using careve app!',
                    unRead: index == 0 || index == 3,
                  ),
                ),
              ],
            );
        },
      ),
    );
  }
}
