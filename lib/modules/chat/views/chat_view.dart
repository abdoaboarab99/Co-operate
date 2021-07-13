import 'package:co_operate/mixins/api_mixin.dart';
import 'package:co_operate/modules/chat/components/message_handler.dart';
import 'package:co_operate/modules/chat/components/message_viewer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatView extends StatefulWidget {
  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> with ApiMixin {
  Future<void> getAllChat() async {
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
          'Chat',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FutureBuilder(
        future: getAllChat(),
        builder: (context, snapShot) {
          if (snapShot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else
            return Column(
              children: <Widget>[
                Expanded(
                  child: NotificationListener<OverscrollIndicatorNotification>(
                    onNotification: (overScroll) {
                      overScroll.disallowGlow();
                      return true;
                    },
                    child: ListView(
                      reverse: true,
                      padding: const EdgeInsets.only(
                        top: 8.0,
                        right: 8.0,
                        left: 8.0,
                      ),
                      children: [
                        ...[
                          MessageViewer(
                            id: 0,
                            content: 'Hi there! I am using careve app',
                            type: SelfOrOtherEnum.other,
                            date: DateFormat.Hm(Locale('en', 'US').toString())
                                .format(DateTime.now()),
                            sender: 'Dr: Ahmed Mohamed',
                          ),
                          MessageViewer(
                            id: 0,
                            content: 'Hello there',
                            type: SelfOrOtherEnum.self,
                            date: DateFormat.Hm(Locale('en', 'US').toString())
                                .format(DateTime.now()),
                            sender: '',
                          ),
                        ]
                        // ...controller
                        //     .approvalCached.value.approval_comments
                        //     .map(
                        //       (e) => MessageViewer(
                        //         id: e.id,
                        //         files: e.files,
                        //         content: e.comment,
                        //         type: e.replay_with,
                        //       ),
                        //     )
                        //     .toList()
                        //     .reversed,
                      ],
                    ),
                  ),
                ),
                MessageHandler(),
              ],
            );
        },
      ),
    );
  }
}
