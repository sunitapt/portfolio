import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/Default_button.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/Contact%20sesction/social_card.dart';
import 'package:portfolio/models/Skills%20Section/Skills_title.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/bg_img_2.png"),
        )
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding*2.5),
          SkillsSectionTitle(
            title: "Contact Me",
            subtitle: "For project inquiry and information",
            color: Color(0XFF07E24A),
          ),
          ContactBox(),
        ],
      ),
    );
  }
}

class ContactBox extends StatefulWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  _ContactBoxState createState() => _ContactBoxState();
}

class _ContactBoxState extends State<ContactBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 800,),
      margin: EdgeInsets.only(top: kDefaultPadding*2),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Wrap(
            spacing: kDefaultPadding,
            runSpacing: kDefaultPadding,
            children: [
              SocialCard(
                iconSrc: "images/linkedin.png",
                color: Color(0XFFD9FFFC),
                //name: "The linkedin Link",
                //press: ()=> launch('https://www.linkedin.com/in/nikhil-ghodke-25585b160/'),
                press: ()=>launch('https://www.linkedin.com/in/sunita-patil-631641180/'),
              ),
              SocialCard(
                iconSrc: "images/github-sign.png",
                color: Color(0xFFFFE0E0),
                //name: "The telegram Link",
                // press: ()=>launch('https://github.com/nikhilbghodke'),
                press: ()=>launch('https://github.com/sunitapt'),
              ),
              SocialCard(
                iconSrc: "images/instagram.png",
                color: Color(0XFFE8F8F9),
                //name: "The instagram Link",
                // press: ()=>launch('https://www.instagram.com/_nikhilghodke/'),
                press: ()=>launch('https://www.instagram.com/_patil_sunita_510/'),
              ),
              SocialCard(
                iconSrc: "images/twitter.png",
                color: Color(0xFFD9FFFD),
                //name: "The twitter Link",
                // press: ()=>launch('https://twitter.com/CoderNovice'),
                press: ()=>launch('https://twitter.com/_SunitaPatil_'),
              ),
              SocialCard(
                iconSrc: "images/medium.png",
                color: Color(0XFFD9FFFC),
                //name: "The medium Link",
                //press: ()=>launch('https://medium.com/@nikhil.ghodke17'),
                press: ()=>launch('https://medium.com/'),
              ),
              SocialCard(
                iconSrc: "images/handphone.png",
                color: Color(0XFFD9FFFC),
                //name: "The medium Link",
                press: (){},
                //name: "    8459992164",
                name: "    7517270165",
              ),
              SocialCard(
                iconSrc: "images/gmail.png",
                color: Color(0XFFD9FFFC),
                //name: "The medium Link",
                press: (){},
                // name: "     nikhilghodke1210@gmail.com",
                name: "     sunitapatil5111@gmail.com",
              ),
            ],
          ),
          SizedBox(
            height: kDefaultPadding*2,
          ),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    String name;
    String emailID;
    String projDesc;
    return Form(
      child: Wrap(
        spacing: kDefaultPadding*2,
        runSpacing: kDefaultPadding,
        children: [
          SizedBox(
            width: 340,
            child: TextFormField(
              onChanged: (value){
                name = value;
              },
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter your Name",
              ),
            ),
          ),
          SizedBox(
            width: 340,
            child: TextFormField(
              onChanged: (value){
                emailID = value;
              },
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email-address",
              ),
            ),
          ),
          // SizedBox(
          //   width: 340,
          //   child: TextFormField(
          //     onChanged: (value){},
          //     decoration: InputDecoration(
          //       labelText: "Project Type",
          //       hintText: "Enter your Project-Name",
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   width: 340,
          //   child: TextFormField(
          //     onChanged: (value){},
          //     decoration: InputDecoration(
          //       labelText: "Your Project Budget",
          //       hintText: "Enter your Project Budget",
          //     ),
          //   ),
          // ),
          Center(
            child: SizedBox(
              width: 340,
              // height: 300,
              child: TextFormField(
                onChanged: (value){
                  projDesc = value;
                },
                decoration: InputDecoration(
                  labelText: "Description",
                  hintText: "Enter your project Description",
                ),
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Center(child: FittedBox(child: DefaultButton(imageSrc: "images/contact_icon.png",press: ()=>_launchURL('sunitapatil5111@gmail.com','Contact from Website','name: $name\n\n EmailID: $emailID\n\n  Description: $projDesc\n\n Thank you!'),text: "Contact Me!",)))
        ],
      ),
    );
  }

  _launchURL(String toMailId, String subject, String body) async {
    var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if (await canLaunch(url)) {
      print('Success');
      await launch(url);
    } else {
      print('bro plz try again');
      throw 'Could not launch $url';
    }
  }
}
