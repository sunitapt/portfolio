import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'Default_button.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        margin: EdgeInsets.only(top:kDefaultPadding*8 ),
        padding: EdgeInsets.all((kDefaultPadding/2),),
        constraints: BoxConstraints(maxWidth: 800),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [kDefaultShadow],
        ),
        child:Row(
          children: [
            Image.asset("images/email.png",
              height: 60,
              width: 60,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: SizedBox(
                height: 60,
                child: VerticalDivider(),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Starting a New Project",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                  SizedBox(
                    height: kDefaultPadding/2,
                  ),
                  Text("Get an estimate for the new project",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 60,
            //   width: 150,
            // ),
            DefaultButton(
              text: "Hire Me!",
              imageSrc: "images/hand.png",
              press: (){},
            ),
          ],
        ),
      ),
    );
  }
}
