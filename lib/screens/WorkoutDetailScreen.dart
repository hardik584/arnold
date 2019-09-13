import 'package:arnold/screens/DrawerScreen.dart';
import 'package:arnold/screens/ExerciseScreen.dart';
import 'package:arnold/styles/HomeStyle.dart';
import 'package:flutter/material.dart';

class WorkoutDetailScreen extends StatefulWidget {
  final String cardTitle, cardBody, imageUrl;
  WorkoutDetailScreen({this.cardTitle, this.cardBody, this.imageUrl, Key key})
      : super(key: key);

  _WorkoutDetailScreenState createState() => _WorkoutDetailScreenState();
}

class _WorkoutDetailScreenState extends State<WorkoutDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(246, 247, 252, 1.0),
        appBar: homeAppbar(title: "Workout single"),
        drawer: DrawerScreen(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              workoutDetailFirstPart(
                cardTitle: widget.cardTitle,
                cardBody: widget.cardBody,
                imageUrl: widget.imageUrl,
              ),
              workoutDetailSecondPart(),
              workoutDetailTextPart(),
              workoutDetailThirdPart(),
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

  Widget workoutDetailTextPart() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Description of the Workout',
            style: HomeStyle.workoutTitleText,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "The chest muscles consist of pectoralis major and minor which helps you pull the arm down and in towards the body and also allows you to put your arm ahead.",
            style: HomeStyle.workoutTitleText1,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "List of Exercices",
            style: HomeStyle.workoutTitleText,
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  Widget workoutDetailRowPart({Color circleColor, String title, String body}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: circleColor,
            maxRadius: 5,
          ),
          SizedBox(
            width: 10,
          ),
          RichText(
            text: TextSpan(
                text: title,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "ubuntu"),
                children: <TextSpan>[
                  TextSpan(text: " "),
                  TextSpan(
                      text: body,
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal))
                ]),
          )
        ],
      ),
    );
  }

  Widget workoutDetailThirdPart() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: Card(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                gridList(),
                divider(),
                gridList(),
              ],
            ),
            Divider(
              color: Colors.grey[300],
              height: 0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[gridList(), divider(), gridList()],
            ),
            Divider(
              color: Colors.grey[300],
              height: 0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[gridList(), divider(), gridList()],
            ),
            Divider(
              color: Colors.grey[300],
              height: 0,
            ),
          ],
        ),
      ),
    );
  }

  Widget workoutDetailSecondPart() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
            child: Column(
              children: <Widget>[
                workoutDetailRowPart(
                    circleColor: Colors.purple,
                    title: "Difficulty:",
                    body: "Intermidiare"),
                workoutDetailRowPart(
                    circleColor: Colors.blueAccent,
                    title: "Goals:",
                    body: "Transform body"),
                workoutDetailRowPart(
                    circleColor: Colors.greenAccent,
                    title: "Exercices:",
                    body: "32"),
                workoutDetailRowPart(
                    circleColor: Colors.red,
                    title: "Calorie burned:",
                    body: "1200 Kcal"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget workoutDetailFirstPart(
      {String cardTitle, String cardBody, String imageUrl}) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.fill)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              cardTitle.toUpperCase(),
              style: HomeStyle.homeBodyThirdCardText,
            ),
            Text(
              cardBody,
              style: HomeStyle.homeBodyThirdCardText1,
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }

  Widget divider() {
    return Container(
      height: 200,
      width: 1,
      color: Colors.grey[300],
      child: Text(' '),
    );
  }

  Widget gridList({Object abc}) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => ExcerciseScreen())),
          child: Container(
            height: 125,
            width: 125,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/chestexo.jpg'),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'incline Dumbbell \nflyes',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 0,
        ),
      ],
    );
  }
}
