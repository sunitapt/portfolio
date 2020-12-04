import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
class GlassContent extends StatelessWidget {
  const GlassContent({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints: BoxConstraints(
              maxWidth: 800, maxHeight: size.height * 0.64),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello there! \n I am",
                style: Theme
                    .of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.white),
              ),
              Text("SUNITA \nPATIL",
                style: TextStyle(
                    fontSize: 75,//65
                    fontWeight: FontWeight.bold, color: Colors.white),),

              Text("Computer Enthusiast\nFlutter Developer", style: Theme
                  .of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.white),),


            ],
          ),
        ),
      ),
    );
  }
}