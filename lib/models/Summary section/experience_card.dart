import 'package:flutter/material.dart';

import '../../constants.dart';


class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    this.numOfExp,
    Key key,
  }) : super(key: key);
  final String numOfExp;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0.5),
      padding: EdgeInsets.all(kDefaultPadding/2),
      height: 140,
      width: 155,
      decoration: BoxDecoration(
          color: Color(0xFFF7E8FF),
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFFEDD2FC),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0,3),
              blurRadius: 6,
              color: Color(0xFFA600FF).withOpacity(0.25),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 60,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Color(0xFFDFA3FF).withOpacity(1),
                    shadows: [
                      BoxShadow(
                        offset: Offset(0,5),
                        blurRadius: 10,
                        color: Color(0xFFA600FF).withOpacity(1),
                      ),
                    ],
                  ),
                ),
                Text(numOfExp,style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding/2,
            ),
            Text("Years of Experience",style: TextStyle(
              color: Color(0xFFA600FF),
            ),),
          ],
        ),
      ),
    );
  }
}
