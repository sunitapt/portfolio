import 'package:flutter/material.dart';

import '../../constants.dart';

class SummaryTextWithSign extends StatelessWidget {
  const SummaryTextWithSign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Summary \n\nMy Story",style:
        Theme.of(context)
            .textTheme.headline4
            .copyWith(fontWeight: FontWeight.bold,
            color: Colors.black),),
        SizedBox(
          height: kDefaultPadding*2,
        )
      ],
    );
  }
}
