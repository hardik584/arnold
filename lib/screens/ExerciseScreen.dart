import 'package:arnold/styles/HomeStyle.dart';
import 'package:flutter/material.dart';

class ExcerciseScreen extends StatefulWidget {
  ExcerciseScreen({Key key}) : super(key: key);

  _ExcerciseScreenState createState() => _ExcerciseScreenState();
}

class _ExcerciseScreenState extends State<ExcerciseScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(246, 247, 252, 1.0),
        appBar: homeAppbar(title: "Exercice"),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              exerciseScreenFirstPart(imageUrl: "images/chestexo.jpg"),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Incline Dumbbell Flyes",
                  style: HomeStyle.workoutTitleText,
                ),
              ),
              exerciseScreenSecondPart(),
              Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Description of steps",
                        style: HomeStyle.workoutTitleText,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Step 1",
                        style: HomeStyle.homeBodyCardTitle1,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "The chest muscles consist of pectoralis major and minor which helps you pull the arm down and in towards the body and also allows you to put your arm ahead.",
                        style: HomeStyle.workoutTitleText1,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Step 2",
                        style: HomeStyle.homeBodyCardTitle1,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "The chest muscles consist of pectoralis major and minor which helps you pull the arm down and in towards the body and also allows you to put your arm ahead.",
                        style: HomeStyle.workoutTitleText1,
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  )),
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

  Widget exerciseScreenFirstPart({String imageUrl}) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          image:
              DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.fill)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[],
        ),
      ),
    );
  }

  Widget exerciseScreenSecondPart() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
            child: Column(
              children: <Widget>[
                exerciseScreenRowPart(
                    circleColor: Colors.purple,
                    title: "Difficulty:",
                    body: "Intermidiare"),
                exerciseScreenRowPart(
                    circleColor: Colors.blueAccent,
                    title: "Goals:",
                    body: "Transform body"),
                exerciseScreenRowPart(
                    circleColor: Colors.greenAccent,
                    title: "Exercices:",
                    body: "32"),
                exerciseScreenRowPart(
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

  Widget exerciseScreenRowPart({Color circleColor, String title, String body}) {
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
}
