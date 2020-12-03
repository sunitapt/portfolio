import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

//
// class SoundSong extends StatefulWidget {
//   @override
//   _SoundSongState createState() => _SoundSongState();
// }
//
// class _SoundSongState extends State<SoundSong> {
//   AudioPlayer advancedPlayer;
//
//   @override
//   initState() {
//     super.initState();
//     loadMusic();
//   }
//
//   Future loadMusic() async {
//     advancedPlayer = await AudioCache().loop("assets/ThisTownKygo.mp3");
//   }
//
//   @override
//   void dispose() {
//     advancedPlayer = null;
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // child: FloatingActionButton(
//       //   backgroundColor: Colors.black,
//       //   onPressed: () async {
//       //     await AudioCache().loop('ThisTownKygo.mp3',
//       //         volume: 50, mode: PlayerMode.MEDIA_PLAYER);
//       //   },
//       //   child: IconButton(
//       //     color: Colors.red,
//       //     constraints: BoxConstraints(
//       //       maxWidth: 30,
//       //       maxHeight:40,),
//       //     splashColor: Colors.red,
//       //     iconSize: 20,
//       //     onPressed: () async {
//       //       await AudioCache().play('ThisTownKygo.mp3',
//       //           volume: 50, mode: PlayerMode.MEDIA_PLAYER);
//       //     }, icon: Icon(Icons.music_note,color: Colors.white,),),
//       //
//       // ),
//     );
//   }
// }

class SoundSong extends StatefulWidget {
  @override
  _SoundSongState createState() => _SoundSongState();
}

class _SoundSongState extends State<SoundSong> {

  void playSound() {
    final player = AudioCache();
    player.loop('ThisTownKygo.mp3');
  }
  void stopSound() {
    final player = AudioPlayer();
    player.stop();

  }
    @override
  initState() {
    super.initState();
    playSound();
  }
  buildKey({Color color, int soundNumber}) {
    bool isPlaying = false;
    return FlatButton(
      child: Icon(Icons.music_note_sharp,color: Colors.black87,),
      height: 40,
        color: color,
        onPressed: () {
          //isPlaying ? stopSound():playSound();
          if(isPlaying)
            {
              stopSound();
              isPlaying = false;
            }
          else
            {
              playSound();
              isPlaying = true;
            }
        },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child:
              buildKey(color: Color(0xFFFFE0E0),),
    );
  }
}
