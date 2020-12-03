import 'package:flutter/material.dart';

import '../../constants.dart';
import 'feedback_data.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    Key key, this.index,
  }) : super(key: key);
  final int index;

  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){} ,
      hoverColor: Colors.transparent,
      onHover: (value){
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding/2),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding,),
        height: 350,
        width: 250,
        decoration: BoxDecoration(
          color: feedbacks[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if(isHover) kDefaultShadow],
        ),
        child:Column(
          children: [
            Transform.translate(
              offset: Offset(0,-33),
              child: AnimatedContainer(
                duration: duration,
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white,width: 5),
                  boxShadow: [if(!isHover)kDefaultShadow],
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(feedbacks[widget.index].userPic)),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0,-20),
              child: Text(feedbacks[widget.index].review,style: TextStyle(
                  color: kTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  height: 1.5
              ),
              ),
            ),
            //SizedBox(height: kDefaultPadding,),
            Text(feedbacks[widget.index].name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
          ],
        ) ,
      ),
    );
  }
}
