import 'package:arnold/screens/DrawerScreen.dart';
import 'package:arnold/screens/WorkoutDetailScreen.dart';
import 'package:arnold/styles/HomeStyle.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
         backgroundColor: Color.fromRGBO(246, 247, 252, 1.0),
        drawer: DrawerScreen(),
        appBar: homeAppbar(title: "Home"),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              homeFirstPart(),
              homeSecondPart(),
              homeThirdPart(),
              homeLastPart()
            ],
          ),
        ),
      ),
    );
  }

  Widget homeAppbar({String title}) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(title, style: HomeStyle.homeAppbarTitle),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Navigator.pushNamed(context, '/settingScreen');
          },
          color: Colors.red,
        )
      ],
    );
  }

  Widget homeFirstPart() {
    return Container(
      height: 375,
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 50),
                height: 200,
                alignment: Alignment.topRight,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        alignment: Alignment.center,
                        image: AssetImage(
                          "images/homeScreen.png",
                        ),
                        fit: BoxFit.contain)),
              ),
              Container(
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Start your own success story",
                      style: HomeStyle.homeBodyTitle,
                    ),
                    Text(
                      "Do your first training session now!",
                      style: HomeStyle.homeBodyTitle1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned.fill(
            bottom: 20,
            left: 8,
            top: 270,
            right: 8,
            child: SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width / 1.3,
              child: Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Your Goal',
                            style: HomeStyle.homeBodyCardTitle,
                          ),
                          Text(
                            'Gain Weight',
                            style: HomeStyle.homeBodyCardTitle1,
                          )
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.grey,
                        endIndent: 10,
                        indent: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Latest Weight, Jun 06',
                            style: HomeStyle.homeBodyCardTitle,
                          ),
                          Text(
                            '75 Kg',
                            style: HomeStyle.homeBodyCardTitle1,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget homeSecondPart() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: SizedBox(
        height: 80,
        child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Text(
                  'This week',
                  style: HomeStyle.homeBodyCardTitle,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          text: '5 ',
                          style: HomeStyle.homeBodyCardTitle1,
                          children: [
                            TextSpan(
                                text: "days",
                                style: HomeStyle.homeBodyCardTitle)
                          ]),
                    ),
                    Container(
                      height: 30,
                      width: 0.5,
                      color: Colors.grey,
                    ),
                    RichText(
                      text: TextSpan(
                          text: '340 ',
                          style: HomeStyle.homeBodyCardTitle1,
                          children: [
                            TextSpan(
                                text: "min", style: HomeStyle.homeBodyCardTitle)
                          ]),
                    ),
                    Container(
                      height: 30,
                      width: 0.5,
                      color: Colors.grey,
                    ),
                    RichText(
                      text: TextSpan(
                          text: '2.1 ',
                          style: HomeStyle.homeBodyCardTitle1,
                          children: [
                            TextSpan(
                                text: "kcal",
                                style: HomeStyle.homeBodyCardTitle)
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget homeThirdPart() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'WORKOUTS',
                    style: HomeStyle.homeBodyThirdText,
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, "/workoutScreen"),
                    child: Text(
                      'VIEW MORE',
                      style: HomeStyle.homeBodyThirdText1,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 2,
            ),
            ListView(
              shrinkWrap: true,
              physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
              children: <Widget>[
                homeImageCard(
                    cardTitle: "THE ATHELETE'S WORKOUT",
                    cardBody: "Target specific muscles",
                    imageUrl: "images/home1.jpg"),
                homeImageCard(
                    cardTitle: "FULL BODY CHALLENGE",
                    cardBody: "Target specific muscles",
                    imageUrl: "images/home2.jpg"),
                homeImageCard(
                    cardTitle: "ABS WORKOUT BEGINNER",
                    cardBody: "Target specific muscles",
                    imageUrl: "images/home3.jpg"),
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  Widget homeLastPart() {
    return SizedBox(
        width: MediaQuery.of(context).size.width / 1 - 10,
        child: Card(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'MUSCLES BUILDING',
                      style: HomeStyle.homeBodyThirdText,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/musclesScreen");
                      },
                      child: Text(
                        'VIEW MORE',
                        style: HomeStyle.homeBodyThirdText1,
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[300],
                height: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  gridList(
                      imageurl: 'images/forearm.jpg',
                      painname: 'Forearm',
                      excercise: '13 Excercises'),
                  Container(
                    height: 200,
                    width: 1,
                    color: Colors.grey[300],
                    child: Text(' '),
                  ),
                  gridList(
                      imageurl: 'images/biceps.jpg',
                      painname: 'BICEPS',
                      excercise: '13 Excercises')
                ],
              ),
              Divider(
                color: Colors.grey[300],
                height: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  gridList(
                      imageurl: 'images/hamstring.jpg',
                      painname: 'HAMSTRING',
                      excercise: '13 Excercises'),
                  Container(
                    height: 200,
                    width: 1,
                    color: Colors.grey[300],
                    child: Text(' '),
                  ),
                  gridList(
                      imageurl: 'images/lats.jpg',
                      painname: 'LATS',
                      excercise: '13 Excercises')
                ],
              ),
              Divider(
                color: Colors.grey[300],
                height: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  gridList(
                      imageurl: 'images/shoulders.jpg',
                      painname: 'SHOULDERS',
                      excercise: '13 Excercises'),
                  Container(
                    height: 200,
                    width: 1,
                    color: Colors.grey[300],
                    child: Text(' '),
                  ),
                  gridList(
                      imageurl: 'images/traps.jpg',
                      painname: 'TRAPS',
                      excercise: '13 Excercises')
                ],
              ),
            ],
          ),
        ));
  }

  Widget homeImageCard({String cardTitle, String cardBody, String imageUrl}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                cardTitle,
                style: HomeStyle.homeBodyThirdCardText,
              ),
              Text(
                cardBody,
                style: HomeStyle.homeBodyThirdCardText1,
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                child: Text(
                  "START NOW",
                  style: HomeStyle.homeBodyThirdCardText1,
                ),
                color: Colors.red,
                minWidth: 140,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WorkoutDetailScreen(
                                cardBody: cardBody,
                                cardTitle: cardTitle,
                                imageUrl: imageUrl,
                              )));
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget gridList({String imageurl, String painname, String excercise}) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () => Navigator.pushNamed(context, "/musclesDetailScreen"),
          child: Container(
            height: 125,
            width: 125,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageurl),
              ),
              border: Border.all(color: Colors.grey[400]),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          painname,
          style: TextStyle(fontFamily: 'Ubuntu', fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 0,
        ),
        Text(
          excercise,
          style: TextStyle(fontFamily: 'Ubuntu', fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
