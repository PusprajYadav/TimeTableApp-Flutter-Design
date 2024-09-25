import 'package:flutter/material.dart';

class EmotionFace extends StatelessWidget {
  final String face;

  const EmotionFace({
    super.key,
    required this.face,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
        height: height * 0.066,
        width: width * 0.15,
        decoration: BoxDecoration(
            color: Color.fromARGB(212, 63, 10, 255),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 5),
              Text(
                face,
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ));
  }
}
