import 'package:flutter/material.dart';

import '../constants.dart';

class HireMeOutlineButton extends StatelessWidget {
  const HireMeOutlineButton({
    this.text,
    this.imageSrc,
    this.press,
    Key key,
  }) : super(key: key);
  final String imageSrc;
  final String text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlineButton(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding/2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        borderSide: BorderSide(color:Color(0xFFEDEDED), ),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(imageSrc,height: 40,),
            SizedBox(width: kDefaultPadding,),
            Text(text),
          ],
        ),
      ),
    );
  }
}
