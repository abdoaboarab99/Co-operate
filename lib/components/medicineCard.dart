import 'package:flutter/material.dart';

List<Map<String, dynamic>> medicineData = [
  {
    'drug': 'Omega 3',
    'duration': 'Course 30 days',
    'dose': '2x a day',
    'image': AssetImage('assets/icons/pills.png'),
    'color': Color(0xffFA8072),
  },
  {
    'drug': 'Biotin',
    'duration': 'Course 2 weeks',
    'dose': 'Between meals',
    'image': AssetImage('assets/icons/drug.png'),
    'color': Color(0xffBC8F8F),
  },
  {
    'drug': 'Melotanion',
    'duration': 'Course 3 weeks',
    'dose': '3x a day',
    'image': AssetImage('assets/icons/medicine.png'),
    'color': Color(0xff8761AD),
  },
  {
    'drug': 'Ibuprofen',
    'duration': 'Course 60 days',
    'dose': 'Once a day',
    'image': AssetImage('assets/icons/heart.png'),
    'color': Color(0xffF4A460),
  },
  {
    'drug': 'Vitamin C',
    'duration': 'Course 3 Month',
    'dose': '2x a day',
    'image': AssetImage('assets/icons/lightHeart.png'),
    'color': Color(0xffA0522D),
  },
];

class MedicineCard extends StatelessWidget {
  MedicineCard({this.drug, this.duration, this.dose, this.image, this.color});

  final String drug;
  final String duration;
  final String dose;
  final AssetImage image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: color,
      ),
      width: double.infinity,
      height: 120,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width * .35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    drug,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    duration,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    dose,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Image(
                image: image,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
