import 'package:arnold/screens/ExerciseScreen.dart';
import 'package:arnold/styles/HomeStyle.dart';
import 'package:flutter/material.dart';

class MusclesDetailScreen extends StatefulWidget {
  MusclesDetailScreen({Key key}) : super(key: key);

  _MusclesDetailScreenState createState() => _MusclesDetailScreenState();
}

class _MusclesDetailScreenState extends State<MusclesDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        backgroundColor: Color.fromRGBO(246, 247, 252, 1),
        appBar:homeAppbar(title: "Chest Muscle"),
         
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'images/chest.jpg',
                        ))),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Muscles Building',
                  style: HomeStyle.workoutTitleText,
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Are you an intermediate or advanced trainee looking to build muscles mass fast? if so, welcome to the program i simply call the muscles building.',
                  style: HomeStyle.workoutTitleText1,
                ),
              ),
              SizedBox(height: 15),
              Padding(
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
              ),
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
          onTap:  () {
                   Navigator.push(context,
              MaterialPageRoute(builder: (context) => ExcerciseScreen()));},
               
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
