import 'package:co_operate/modules/chat/views/chat_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RoomCard extends StatelessWidget {
  final String image;
  final String username;
  final String lastMessage;
  final DateTime dateTime;
  final bool unRead;

  const RoomCard({
    this.image,
    this.username = 'Careve user',
    this.lastMessage = '',
    this.dateTime,
    this.unRead = false,
  });

  @override
  Widget build(BuildContext context) {
    ImageProvider imageProvider = const AssetImage(
      'assets/images/stayHome.jpg',
    );
    if (image != null) {
      imageProvider = NetworkImage(
        image,
      );
    }

    return Column(
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ChatView())),
              child: Card(
                elevation: unRead ? 5.0 : 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: !unRead ? 10.0 : 20.0,
                ),
                child: Padding(
                  padding: EdgeInsets.all(unRead ? 10.0 : 5.0),
                  child: Row(
                    children: [
                      Container(
                        height: unRead ? 35.0 : 50.0,
                        width: unRead ? 35.0 : 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              username,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              lastMessage,
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (dateTime != null)
                        Column(
                          children: [
                            Text(
                              dateTime.compareTo(DateTime.now()) > 30
                                  ? DateFormat.yMMMMd(
                                          Locale('en', 'US').toString())
                                      .format(dateTime)
                                  : DateFormat.Hm(Locale('en', 'US').toString())
                                      .format(dateTime),
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.withOpacity(0.3),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ),
            if (unRead)
              Positioned(
                top: 0.0,
                right: 15.0,
                child: const Card(
                  color: Colors.indigo,
                  shape: CircleBorder(),
                  margin: EdgeInsets.zero,
                  elevation: 5.0,
                  child: SizedBox(
                    height: 20.0,
                    width: 20.0,
                  ),
                ),
              ),
          ],
        ),
        if (!unRead)
          const Divider(
            color: Colors.grey,
            indent: 50.0,
            height: 2.5,
          )
        else
          const SizedBox(
            height: 2.5,
          ),
      ],
    );
  }
}
