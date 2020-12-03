import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/HireMeCard.dart';
import 'package:portfolio/models/Projects/RecentProjects.dart';
import 'package:portfolio/models/Projects/recentProjectCard.dart';
import 'package:portfolio/models/Skills%20Section/Skills_title.dart';

import '../../constants.dart';
class RecentProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      //constraints: BoxConstraints(maxWidth: 800),
      width: double.infinity,
      height :950,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/recent_work_bg.png"),

        ),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Transform.translate(
            offset:Offset(0,-180),
            child: HireMeCard(),),
          Transform.translate(
            offset: Offset(0,-120),
            child: SkillsSectionTitle(
              title: "Recent Projects",
              subtitle: "My fav project",
              color: Color(0xFFFFB100),
            ),
          ),
          //SizedBox(height: kDefaultPadding*2,),
          Transform.translate(
            offset: Offset(0,-80),
            child: SizedBox(
              width: 800,
              child: Wrap(
                spacing: 10,
                runSpacing: kDefaultPadding,
                children:
                  List.generate(
                      recentProject.length, (index) => RecentProjectsCard(index: index,press: (){},)),
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding*5,
          ),
        ],
      ),
    );
  }
}
