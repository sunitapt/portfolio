
import 'package:flutter/material.dart';
import 'glass_content.dart';

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        //Spacer(),
        GlassContent(size: size),
        // IconButton(
        //   color: Colors.red,
        //   constraints: BoxConstraints(
        //     maxWidth: 30,
        //     maxHeight:40,),
        //   splashColor: Colors.red,
        //   iconSize: 20,
        //   onPressed: () async {
        //     await AudioCache().play('assets/ThisTownKygo.mp3',
        //     volume: 50, mode: PlayerMode.MEDIA_PLAYER);
        //   }, icon: Icon(Icons.music_note,color: Colors.black,),),
        Spacer(flex: 1,),
      ],
    );
  }
}
