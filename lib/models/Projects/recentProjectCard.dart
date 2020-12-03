import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/Projects/RecentProjects.dart';
import 'package:url_launcher/url_launcher.dart';

class RecentProjectsCard extends StatefulWidget {
  const RecentProjectsCard( {
    Key key, this.index, this.press,
  }) : super(key: key);
  final int index;
  final Function press;

  @override
  _RecentProjectsCardState createState() => _RecentProjectsCardState();
}

class _RecentProjectsCardState extends State<RecentProjectsCard> {
  bool isHover = false;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value){
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 190,
        width: 390,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [ if (isHover)kDefaultShadow],
        ),
        child: Row(
          children: [
            Image.asset(recentProject[widget.index].image,),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(recentProject[widget.index].category.toUpperCase(),style: TextStyle(
                        fontSize: 12
                    ),),
                    //SizedBox(height: kDefaultPadding/2,),
                    Text(
                      recentProject[widget.index].title,
                      style: Theme.of(context).textTheme.headline6.copyWith(height: 1.5),
                    ),
                    //SizedBox(height: kDefaultPadding,),
                    // Text(recentProject[widget.index].url,
                    //   style: TextStyle(
                    //       decoration: TextDecoration.underline),),
                    InkWell(
                      child: Text('Visit Github'),
                      onTap: ()=> launch(recentProject[widget.index].url),
                    ),
                    SizedBox(height: kDefaultPadding/2,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
