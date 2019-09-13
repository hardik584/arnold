import 'package:arnold/screens/DrawerScreen.dart';
import 'package:arnold/styles/HomeStyle.dart';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';

class MusclesScreen extends StatefulWidget {
  MusclesScreen({Key key}) : super(key: key);

  _MusclesScreenState createState() => _MusclesScreenState();
}

class _MusclesScreenState extends State<MusclesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(246, 247, 252, 1),
        appBar: homeAppbar(title: "Muscles Building"),
        drawer: DrawerScreen(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Text(
                  'Muscles Building',
                  style: HomeStyle.workoutTitleText,
                ),
                SizedBox(height: 15),
                Text(
                  'Are you an intermediate or advanced trainee looking to build muscles mass fast? if so, welcome to the program i simply call the muscles building.',
                  style: HomeStyle.workoutTitleText1,
                ),
                SizedBox(height: 15),
                musclesFirstPart()
              ],
            ),
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
  Widget musclesFirstPart() {
    return Card(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              gridList(
                  imageurl: 'images/forearm.jpg',
                  painname: 'Forearm',
                  excercise: '13 Excercises',
                  abc: LoginScreen()),
              Container(
                height: 200,
                width: 1,
                color: Colors.grey[300],
                child: Text(' '),
              ),
              gridList(
                  imageurl: 'images/biceps.jpg',
                  painname: 'BICEPS',
                  excercise: '13 Excercises'),
            ],
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
          Divider(
            color: Colors.grey[300],
            height: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              gridList(
                  imageurl: 'images/neck.jpg',
                  painname: 'Neck',
                  excercise: '13 Excercises',
                  abc: LoginScreen()),
              Container(
                height: 200,
                width: 1,
                color: Colors.grey[300],
                child: Text(' '),
              ),
              gridList(
                  imageurl: 'images/chest.jpg',
                  painname: 'Cheast',
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
                  imageurl: 'images/quadriceps.jpg',
                  painname: 'Quadriceps',
                  excercise: '13 Excercises',
                  abc: LoginScreen()),
              Container(
                height: 200,
                width: 1,
                color: Colors.grey[300],
                child: Text(' '),
              ),
              gridList(
                  imageurl: 'images/gluteus.jpg',
                  painname: 'Gluteus',
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
                  imageurl: 'images/triceps.jpg',
                  painname: 'Triceps',
                  excercise: '13 Excercises',
                  abc: LoginScreen()),
              Container(
                height: 200,
                width: 1,
                color: Colors.grey[300],
                child: Text(' '),
              ),
              gridList(
                  imageurl: 'images/abdominals.jpg',
                  painname: 'Abdominals',
                  excercise: '13 Excercises')
            ],
          ),
          Divider(
            color: Colors.grey[300],
            height: 0,
          ),
        ],
      ),
    );
  }

  Widget gridList(
      {String imageurl, String painname, String excercise, Object abc}) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: ()=>Navigator.pushNamed(context,"/musclesDetailScreen"),
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
