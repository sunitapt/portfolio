import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "- NIKHIL GHODKE",
    review: 'In a while I have not seen anyone as caring and selfless as you are! The world unlike your nature is ruthless and cares for no one, i just deeply want you to freeze in time and remain what ever you are currently, the same childish, innocent and passionate kid.',
    userPic: "images/padhku.jpg",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "- YASH",
    review: 'Sunii,You are childish, beautiful, wild, innocent mess. The gravitative persona that you carry is sphere of Happiness around you. whoever comes into that sphere becomes happy.That sphere is held strong with your smile which never fails to melt hearts.Stay Happy.',
    userPic: "images/yash.jpg",
    color: Color(0xFFD9FFFC),
  ),
  Feedback(
    id: 3,
    name: "- HARSHALI",
    review: 'You were the one, standing with me when everyone one else I loved left me..You were the one, weeping my tears when I was crying....You were the one, making efforts to make feel up when everybody was putting me down..You helped me to heal myself.You made me alive..I love you my jaan..',
    userPic: "images/h.jpg",
    color: Color(0xFFFFE0E0),
  ),
  Feedback(
    id: 4,
    name: "- ANUSHKA BHAVE",
    review: 'feedback',
    userPic: "images/anushka.jpg",
    color: Color(0xFFFFF3DD),
  ),
];

// String review =
//     'Hi there,the one who is most charming talented. Do his work on time.Never gives excuses for works.Understanding and caring one.Happy to have you in my life. ';
