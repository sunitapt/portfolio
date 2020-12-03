import 'package:flutter/material.dart';

import '../../constants.dart';


class AboutText extends StatelessWidget {
  const AboutText({
    Key key,
    this.text
  }) : super(key: key);
  final String text;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0.5),
      //padding: EdgeInsets.all(kDefaultPadding/2),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding*2),
        child: Text(text,
          style: TextStyle(
              fontWeight: FontWeight.w200,
              color: kTextColor,
              height: 2,


          ),
        ),
      ),
    );
  }
}
