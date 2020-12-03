import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/Feedback%20Section/feedback_data.dart';
import 'package:portfolio/models/Skills%20Section/Skills_title.dart';

import 'feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding*2.5, ),
      constraints: BoxConstraints(maxWidth: 800),
      child: Column(
        children: [
          SkillsSectionTitle(
            title: "Testimonials",
            subtitle: "My colleagues feedback I received",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Wrap(
            spacing: 15,
            runSpacing: 40,
            children: List.generate(feedbacks.length, (index) => FeedbackCard(index: index,),),
          ),
          SizedBox(
            height: kDefaultPadding*5,
          )

        ],
      ),
    );
  }
}
