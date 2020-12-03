import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/Skills%20Section/skills.dart';

import 'Skills_card.dart';
import 'Skills_title.dart';
class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding ),
      constraints: BoxConstraints(maxWidth: 800),
      child: Column(
        children: [
          SkillsSectionTitle(title: "My Skills",subtitle: "My Strong Areas",color: Color(0xFFFF0000),),
          Wrap(
            spacing: 10,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
              List.generate(skills.length, (index) => SkillCard(index: index,),),
          ),
        ],
      ),
    );
  }
}
