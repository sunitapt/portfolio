import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/models/first%20section/LogoAndBlurBox.dart';
import 'package:portfolio/models/first%20section/Person_Pic.dart';
import 'package:portfolio/constants.dart';
import 'Menu.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
        constraints: BoxConstraints(minHeight: 400,maxHeight: 600),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/background.png'),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top : kDefaultPadding ),
          width: 1200,
          child: Stack(
            children: [
              LogoAndBlurBox(size: size),
              Positioned(
                bottom: 0,
                right: 0,
               child: PersonPic(),
              ),
              Positioned(
                bottom: 0,
                child: Menu(),
              ),

            ],
          ),

        ),
      );
  }
}
