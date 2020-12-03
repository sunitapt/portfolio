import 'package:flutter/material.dart';

import '../../constants.dart';


class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex =0;
  int hoverIndex =0;
  List<String> menuItems = [
    "Home",
    "summary",
    "Skills",
    "Projects",
    "Testimonials ",
    "Contact",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding*2),
      constraints: BoxConstraints(maxWidth: 800,),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
        List.generate(menuItems.length, (index) => buildMenuItem(index)),
      ),
    );
  }
  Widget buildMenuItem(int index)=> InkWell(
    onTap: (){
      setState(() {
        selectedIndex = index ;
      });
    },
    onHover: (value){
      setState(() {
        value ? hoverIndex = index :hoverIndex =selectedIndex;
      });
    },
    child: Container(
        constraints: BoxConstraints(minWidth: 117,),
        height: 70,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(menuItems[index],style: TextStyle(fontSize: 20.0,color: kTextColor),),
            //hover
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom: selectedIndex!=index && hoverIndex==index ? -20:-32,
              child: Image.asset("images/Hover.png"),
            ),
            //select
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom: selectedIndex == index ?-2 :-32,
              child: Image.asset("images/Hover.png"),
            ),
          ],
        )
    ),
  );

}
