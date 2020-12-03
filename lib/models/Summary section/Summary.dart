import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/components/Default_button.dart';
import 'package:portfolio/components/Outline_button.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/Summary%20section/summaryText_story.dart';
import 'package:url_launcher/url_launcher.dart';
import 'SummaryName_sign.dart';
import 'experience_card.dart';

class Summary extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 800),
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding*2,),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SummaryTextWithSign(),
              Expanded(
               //  child: AboutText(
               //    text: "Incoming SDE Deutsche Bank || Google Summer of Code Intern 2019 || SDE intern Deutsche Bank 2020. Experienced Software Engineer with a demonstrated history of working in the research industry.",
               // ),
                child: AboutText(
                  text: "Experienced Project Manager with a demonstrated history of working in the e-learning industry. Skilled in Python (Programming Language), Dart, C,java (programming language). Skilled in data structures and algorithms.  ",
                ),
              ),
              ExperienceCard(numOfExp: "01",),
              Expanded(
              //   child: AboutText(
              //     text: "Skilled in Spring Boot, Node, PHP, HTML, and CSS. Strong engineering professional with a Bachelor of Technology - BTech focused in Computer Science from Vishwakarma Institute Of Technology.",),
              // ),
                child: AboutText(
                  text: "Strong at flutter app development(Cross platform app development)Strong program and project management professional with a BE - Bachelor of Engineering focused in IT from Vishwakarma Institute Of Technology.",),
                ),
            ],
          ),
          SizedBox(height: kDefaultPadding*2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HireMeOutlineButton(imageSrc: "images/hand.png",text: "Hire Me!",press: (){},),
              SizedBox(width: kDefaultPadding*2,),
              DefaultButton(
                imageSrc:"images/download.png",
                text: "Download CV",
                //press: ()=>launch('https://drive.google.com/file/d/1t0hQejGqqfudRaDN1k6aA5VdRITBSk6X/view?usp=sharing'
                press: ()=>launch('https://drive.google.com/file/d/1x3s0CEBSPWcVOx4_tW_IgHeU6TxQgL16/view?usp=sharing'
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

