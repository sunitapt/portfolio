import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;
  final int height;

  Feedback({this.name, this.review, this.userPic, this.id, this.color,this.height});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "- NIKHIL GHODKE",
    review: 'In a while I have not seen anyone as caring and selfless as you are! The world unlike your nature is ruthless and cares for no one, i just deeply want you to freeze in time and remain what ever you are currently, the same childish, innocent and passionate kid.',
    userPic: "images/padhku.jpg",
    color: Color(0xFFFFF3DD),
    height: 350,
  ),
  Feedback(
    id: 2,
    name: "- YASH HALGAONKAR",
    review: 'Sunii,You are a childish, beautiful, sassy, wild, innocent mess. You have a gravitative persona that you carry wherever you go. You carry a sphere of Happiness around you - whoever comes into that sphere becomes happy. That sphere is held strong with your smile which never fails to melt hearts. Keep bringing joy and happiness to peoples around you. Always keep smiling, stay happy, and never ever change. Dont let anyone tell you that you are less than PERFECT.',
    userPic: "images/yash.jpg",
    color: Color(0xFFD9FFFC),
    height: 450,
  ),
  Feedback(
    id: 3,
    name: "- HARSHALI BIRARI",
    review: 'You were the one, standing with me when everyone one else I loved left me..You were the one, weeping my tears when I was crying....You were the one, making efforts to make feel up when everybody was putting me down..You helped me to heal myself.You made me alive..I love you my jaan..',
    userPic: "images/h.jpg",
    color: Color(0xFFFFE0E0),
    height: 350,
  ),
  Feedback(
    id: 4,
    name: "- ANUSHKA BHAVE",
    review: 'Sunita is an inquisitive and a quick thinker. Her grasping power amazes me! She is the embodiment of both intelligence and emotion. She has a unique perspective for dealing with problems, understanding and empathising with people and she is such a bliss to everyone around her. Due to these qualities Sunita is capable of being an emotionally intelligent leader and team player. She definitely has the power to make people lives better in the years to come!',
    userPic: "images/anushka.jpg",
    color: Color(0xFFFFF3DD),
    height: 475,
  ),
];

// String review =
//     'Hi there,the one who is most charming talented. Do his work on time.Never gives excuses for works.Understanding and caring one.Happy to have you in my life. ';
