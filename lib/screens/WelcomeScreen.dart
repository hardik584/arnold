import 'package:arnold/styles/WelcomeStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        welcomeBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Arnold', style: WelcomeStyle.welcomeHeading),
                  SizedBox(
                    height: 200,
                  ),
                  welcomeSwiper(),
                  welocmeButton()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget welcomeBackground() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "images/welcomeScreen.jpeg",
          ),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(Colors.black26, BlendMode.hue),
        ),
      ),
    );
  }

  Widget welocmeButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      child: InkWell(
        splashColor: Colors.grey,
        onTap: () {
          Navigator.pushNamed(context, '/loginScreen');
        },
        child: Container(
          height: 60,
          color: Colors.redAccent,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Start challenge now',
                  style: WelcomeStyle.welcomeButton,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget welcomeSwiper() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      child: SizedBox(
        height: 230,
        child: Swiper(
          containerWidth: 10,

          pagination: SwiperPagination(
              builder: SwiperPagination.dots,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 30, bottom: 20, top: 10)),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.white.withOpacity(0.7),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Get a Series of tools to achieve all your goals.',
                      style: WelcomeStyle.welcomeTitle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "arnold app will help you burn fat,build muscle, stay in shape, and what's more,imrove your health quickly.",
                      style: WelcomeStyle.welcomeBody,
                    )
                  ],
                ),
              ),
            );
          },
 
        ),
      ),
    );
  }
}
