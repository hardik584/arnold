import 'package:arnold/screens/DrawerScreen.dart';
import 'package:arnold/screens/WorkoutDetailScreen.dart';
import 'package:arnold/styles/HomeStyle.dart';
import 'package:flutter/material.dart';
 

class WorkoutScreen extends StatefulWidget {
  WorkoutScreen({Key key}) : super(key: key);

  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  List<String> cardTitle = [
    "the athlete's workout",
    "Full Boody CHALLENGE",
    "abs workout beginner",
    "The 3D shoulders workout",
    "sexy and fit body workout",
    "ARMS TONING BEGINNER",
    "VERTICAL JUMP TRAININGS",
    "ENDURANCE TRAINING"
  ];

  List<String> imageUrl = [
    "images/home1.jpg",
    "images/home2.jpg",
    "images/home3.jpg",
    "images/home4.jpg",
    "images/home5.jpg",
    "images/home6.jpg",
    "images/home7.jpg",
    "images/home1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: DrawerScreen(),
        appBar: homeAppbar(title: "Workouts"),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[workoutFirstPart(), workoutSecondPart()],
          ),
        ),
      ),
    );
  }

  Widget homeAppbar({String title}) {
    return AppBar(
      backgroundColor: Colors.white,
      // leading: IconButton(
      //   icon: Icon(Icons.menu),
      //   onPressed: () {
      //     if (_scaffoldKey.currentState.isDrawerOpen)
      //       _scaffoldKey.currentState.openEndDrawer();
      //     else {
      //       _scaffoldKey.currentState.openDrawer();
      //     }
      //   },
      //   color: Colors.black,
      // ),
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

  Widget workoutFirstPart() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Workouts Routine",
              style: HomeStyle.workoutTitleText,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Building a workout routine can be a daunting task,if you're looking for the perfect workout routine for your goals,schedule, and training experience,you want to find them in our app!",
              style: HomeStyle.workoutTitleText1,
              textAlign: TextAlign.left,
            )
          ],
        ),
      ),
    );
  }

  Widget workoutSecondPart() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        child: Column(
          children: <Widget>[
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
              itemCount: cardTitle.length,
              itemBuilder: (context, index) {
                return workoutImageCard(
                    cardTitle: cardTitle[index],
                    cardBody: "Target specific muscles",
                    imageUrl: imageUrl[index]);
              },
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  Widget workoutImageCard(
      {String cardTitle, String cardBody, String imageUrl}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
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
                cardTitle.toUpperCase(),
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
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkoutDetailScreen(
                        cardBody: cardBody,
                        cardTitle: cardTitle,
                        imageUrl: imageUrl,
                      )));
                  // Navigator.pushNamed(context, "/workoutDetailScreen",
                  //     arguments: );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
