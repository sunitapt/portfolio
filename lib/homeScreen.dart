import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/sound.dart';
import 'models/Contact sesction/contact_section.dart';
import 'models/Feedback Section/feedback_section.dart';
import 'models/Projects/recent_projects.dart';
import 'models/Skills Section/Skills_section.dart';
import 'models/Summary section/Summary.dart';
import 'models/diskdata.dart';
import 'models/first section/FirstScreen.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AudioCache().play('ThisTownKygo.mp3');
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // VariousDiscs(50),
            FirstScreen(),
            SoundSong(),
            SizedBox(height: kDefaultPadding*2,),
            Summary(),
            SkillsSection(),
            RecentProjects(),
            FeedbackSection(),
            SizedBox(height: kDefaultPadding,),
            ContactSection(),
            SizedBox(
              height: 500,
            ),

          ],
        ),
      ),
    );
  }
}

//I have couple of hobbies but I like listening to music. I genuinely love to communicate with people. I believe every person has a interesting story to tell.