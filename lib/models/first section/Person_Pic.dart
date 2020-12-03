import 'package:flutter/material.dart';


class PersonPic extends StatelessWidget {
  const PersonPic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 639,maxHeight: 600),
      //constraints: BoxConstraints(maxWidth: 739,maxHeight: 600),
      child: Image.asset("images/sun2.jpg"),
    );
  }
}
