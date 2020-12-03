import 'package:flutter/material.dart';

import '../../constants.dart';
class SkillsSectionTitle extends StatelessWidget {
  const SkillsSectionTitle({
    this.subtitle,
    this.title,
    this.color,
    Key key,
  }) : super(key: key);
  final String title,subtitle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.symmetric(vertical: kDefaultPadding ) ,
      constraints: BoxConstraints(maxWidth: 800),
      height: 80,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            padding: EdgeInsets.only(bottom: 60),
            width: 4,
            height: 80,
            color: Colors.black,
            child: DecoratedBox(
              decoration:  BoxDecoration(
                color: color,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(subtitle,
                style:TextStyle(
                  fontWeight: FontWeight.w200,
                  color: kTextColor,
                ),
              ),
              Text(title,
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ) ,
              ),
            ],
          )
        ],
      ),
    );
  }
}
