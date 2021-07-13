import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageHandler extends StatefulWidget {
  @override
  _MessageHandlerState createState() => _MessageHandlerState();
}

class _MessageHandlerState extends State<MessageHandler> {
  bool _isLoading = false;
  TextEditingController messageController = TextEditingController();
  String messageText = '';

  Future sendMessage() async {
    setState(() {
      _isLoading = true;
    });
    if ((messageText.isNotEmpty || messageController.text.isNotEmpty)) {
      print('message : $messageText');
      try {
        // final Map<String,dynamic> response = await post(url);
        messageController.clear();
        messageText = '';
      } catch (error) {
        //TODO handle error open dialog
      }
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: double.infinity,
          color: Colors.transparent,
          child: Row(
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    controller: messageController,
                    readOnly: _isLoading,
                    style: TextStyle(
                      color: Color(0xff79c3d4),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                    textInputAction: TextInputAction.done,
                    cursorColor: Color(0xff79c3d4),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      alignLabelWithHint: true,
                      hintText: 'Type message',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  if (!_isLoading) {
                    await sendMessage();
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Icon(
                    CupertinoIcons.paperplane_fill,
                    color: Color(0xff79c3d4),
                    size: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
