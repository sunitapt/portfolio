import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    this.imageSrc,
    this.press,
    this.text,
    Key key,
  }) : super(key: key);
  final String imageSrc, text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding/2,horizontal: kDefaultPadding*2),
      onPressed: press,
      color: Color(0xFFE8F0F9),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          Image.asset(imageSrc),
          SizedBox(width: kDefaultPadding,),
          Text(text),
        ],
      ),
    );
  }
}
