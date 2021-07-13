import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class HbdModel {
//   final String text;
//   final String content;
//
//   HbdModel({@required this.content, @required this.text});
// }
//
// class HBD extends StatefulWidget {
//   @override
//   _HBDState createState() => _HBDState();
// }
//
// class _HBDState extends State<HBD> {
//   List<HbdModel> data = [
//     HbdModel(text: 'Ahmed', content: 'Mohamed'),
//     HbdModel(text: 'Amr', content: 'Mohamed'),
//     HbdModel(text: 'Ibrahim', content: 'Mohamed'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               child: Container(
//                 width: double.infinity,
//                 child: ListView.separated(
//                     itemBuilder: (context, index) => hbd(data[index]),
//                     separatorBuilder: (context, index) => SizedBox(
//                           height: 15,
//                         ),
//                     itemCount: data.length),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget hbd(HbdModel cart) => Container(
//         color: Colors.red,
//         width: double.infinity,
//         height: 100,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             CircleAvatar(
//               radius: 30,
//             ),
//             Text('${cart.text}'),
//             Text('${cart.content}'),
//           ],
//         ),
//       );
// }
class HBD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Card(),
      ),
    );
  }
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 30,
          ),
          Text('dadad'),
          Text('dadada'),
        ],
      ),
    );
  }
}
