import 'package:arnold/screens/WorkoutDetailScreen.dart';
import 'package:arnold/styles/HomeStyle.dart';
import 'package:flutter/material.dart';

class PageScreen extends StatefulWidget {
  PageScreen({Key key}) : super(key: key);

  _PageScreenState createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
         backgroundColor: Color.fromRGBO(246, 247, 252, 1.0),
        appBar: homeAppbar(title: "Pages"),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.grey,
              ),
              createListtile(
                  leading: Icons.home, title: "Home", pathName: "/homeScreen"),
              createDivider(),
              createListtile(
                  leading: Icons.directions_run,
                  title: "Walkthrough",
                  pathName: "/"),
              createDivider(),
              createListtile(
                  leading: Icons.security,
                  title: "Login",
                  pathName: "/loginScreen"),
              createDivider(),
              createListtile(
                  leading: Icons.security,
                  title: "Register",
                  pathName: "/signScreen"),
              createDivider(),
              createListtile(
                  leading: Icons.security,
                  title: "Forgot Password",
                  pathName: "/forgotScreen"),
              createDivider(),
              createListtile(
                  leading: Icons.fitness_center,
                  title: "Workouts",
                  pathName: "/workoutScreen"),
              createDivider(),
              createListtile(
                  leading: Icons.pool,
                  title: "Muscle Building",
                  pathName: "/musclesScreen"),
              createDivider(),
              createListtile(
                  leading: Icons.notifications_none,
                  title: "Workout Detail",
                  pathName: "/workoutDetailScreen"),
              createDivider(),
              createListtile(
                  leading: Icons.golf_course,
                  title: "Muscle Building Detail",
                  pathName: "/musclesDetailScreen"),
              createDivider(),
              createListtile(
                  leading: Icons.filter_tilt_shift,
                  title: "Exercise Detail",
                  pathName: "/exerciseScreen"),
              createDivider(),
              createListtile(
                  leading: Icons.track_changes,
                  title: "Report & Tracking",
                  pathName: "/reportScreen"),
              createDivider(),
              createListtile(
                  leading: Icons.settings_applications,
                  title: "Settings",
                  pathName: "/settingScreen"),
              createDivider(),
              createListtile(
                  leading: Icons.person,
                  title: "About",
                  pathName: "/aboutScreen"),
              Divider(
                color: Colors.grey,
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

  Widget createListtile({IconData leading, String title, String pathName}) {
    return ListTile(
      onTap: () {
        if (pathName == "/workoutDetailScreen") {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => WorkoutDetailScreen(
                        imageUrl: "images/home1.jpg",
                        cardBody: "Target specific muscles",
                        cardTitle: "the athlete's workout",
                      )));
        } else {
          Navigator.pushNamed(context, pathName);
        }
      },
      leading: Icon(
        leading,
        color: Colors.grey,
      ),
      title: Text(
        title,
        style: TextStyle(fontFamily: "Ubuntu", fontSize: 18),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 15,
      ),
    );
  }

  Widget createDivider() {
    return Divider(
      height: 0,
      color: Colors.grey,
      indent: MediaQuery.of(context).size.width / 6,
    );
  }
}
