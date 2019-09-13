import 'package:arnold/styles/HomeStyle.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class AboutScreen extends StatefulWidget {
  AboutScreen({Key key}) : super(key: key);

  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        backgroundColor: Color.fromRGBO(246, 247, 252, 1),
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: FlexibleSpaceBar(),
          title: Text('About',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Ubuntu', fontSize: 16)),
          iconTheme: new IconThemeData(color: Colors.black),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: AvatarGlow(
      startDelay: Duration(milliseconds: 1000),
      glowColor: Colors.redAccent,
      endRadius: 90.0,
      duration: Duration(milliseconds: 2000),
      repeat: true,
      showTwoGlows: true,
      repeatPauseDuration: Duration(milliseconds: 100),
      child: Material(
        elevation: 8.0,
        shape: CircleBorder(),
        child: CircleAvatar(
          backgroundColor:Colors.black12 ,
          child: Image.asset('images/logo.png',height: 60,),
          radius: 40.0,
          // shape: BoxShape.circle
        ),
      ),
  ),
              ),
              Text(
                'About the app',
                style:HomeStyle.workoutTitleText
              ),
              SizedBox(height: 15),
              Text(
                'The chest muscles consist of pectoralis major and minor which helps you pull the arm down and in towards the body and also allows you to put your arm ahead. The chest muscles consist of pectoralis major and minor which helps you pull the arm down and in towards the body and also allows you to put your arm ahead.',
                softWrap: true,
                textAlign: TextAlign.justify,
                style:
                     HomeStyle.workoutTitleText1,
              ),
                SizedBox(height: 15),
               Text(
                'The chest muscles consist of pectoralis major and minor which helps you pull the arm down and in towards the body and also allows you to put your arm ahead. ',
                softWrap: true,
                textAlign: TextAlign.justify,
                style:
                    HomeStyle.workoutTitleText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
