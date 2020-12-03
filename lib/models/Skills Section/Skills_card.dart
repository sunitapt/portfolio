import 'package:flutter/material.dart';
import 'package:portfolio/models/Skills%20Section/skills.dart';

import '../../constants.dart';



class SkillCard extends StatefulWidget {
  const SkillCard({
    Key key,this.index,
  }) : super(key: key);
  final int index;
  @override
  _SkillCardState createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      onHover: (value){
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding*2),
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: skills[widget.index].color,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [if(isHover) kDefaultShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              padding: EdgeInsets.all( kDefaultPadding),
              height: 74,
              width: 74,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  if(!isHover)
                    BoxShadow(
                      offset: Offset(0,20),
                      blurRadius: 30,
                      color:  Colors.black.withOpacity(0.1),
                    ),
                ],
              ),
              child: Image.asset(
                skills[widget.index].image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Text(skills[widget.index].title,style: TextStyle(fontSize:15)),
          ],
        ),
      ),
    );
  }
}

