import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({
    Key key, this.iconSrc, this.name, this.color, this.press,
  }) : super(key: key);
  final String iconSrc,name;
  final Color color;
  final Function press;


  @override
  _SocialCardState createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: widget.press,
      onHover: (value){
        setState(() {
          isHover = value;
        });
      },
      child: FittedBox(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding/2,horizontal: kDefaultPadding*1.5
          ),
          decoration: BoxDecoration(
            color: widget.color,//0XFFD9FFFC
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if(isHover)kDefaultShadow],
          ),
          child: Row(
            children: [
              Image.asset(
                widget.iconSrc,
                height: 50,
                width: 50,),
              //SizedBox(width: kDefaultPadding,),
              Text(widget.name,
                style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}

