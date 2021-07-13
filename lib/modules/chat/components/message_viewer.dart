import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SelfOrOtherEnum {
  self,
  other,
}

class MessageViewer extends StatelessWidget {
  final int id;
  final SelfOrOtherEnum type;
  final String content;
  final String sender;
  final String date;

  const MessageViewer({
    @required this.id,
    @required this.content,
    @required this.type,
    @required this.sender,
    @required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                textDirection: (type == SelfOrOtherEnum.self
                    ? TextDirection.ltr
                    : TextDirection.rtl),
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: type == SelfOrOtherEnum.self
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        if (sender != null)
                          Text(
                            sender,
                            style: TextStyle(
                              color: Color(0xff79c3d4),
                              fontSize: 16.0,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        if (content != null) ...[
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 5.0,
                            ),
                            margin: EdgeInsets.only(
                              top: 5.0,
                              bottom: 5.0,
                              left: type == SelfOrOtherEnum.self ? 30.0 : 5.0,
                              right: type == SelfOrOtherEnum.self ? 5.0 : 30.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: messageBorderRadius(),
                              color: type == SelfOrOtherEnum.self
                                  ? Color(0xff79c3d4)
                                  : Colors.grey[200],
                            ),
                            child: Text(
                              content ?? '',
                              style: TextStyle(
                                color: type == SelfOrOtherEnum.self
                                    ? Colors.white
                                    : Color(0xff79c3d4),
                                fontSize: 16.0,
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 2.5,
                              horizontal: 10.0,
                            ),
                            child: Text(
                              date ?? '',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 11.0,
                              ),
                            ),
                          ),
                        ],
                        const SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  BorderRadius messageBorderRadius() {
    return BorderRadius.only(
      topLeft: const Radius.circular(
        10.0,
      ),
      bottomLeft: Radius.circular(
        type == SelfOrOtherEnum.self ? 10.0 : 0.0,
      ),
      topRight: const Radius.circular(
        10.0,
      ),
      bottomRight: Radius.circular(type == SelfOrOtherEnum.self ? 0.0 : 10.0),
    );
  }
}
