import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key key}) : super(key: key);

  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 6,
          backgroundColor: Colors.white,
          title: Text(
            "Settings",
            style: TextStyle(color: Colors.black, fontFamily: "Ubuntu"),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.grey,
              ),
              createListtile(
                leading: Icons.edit,
                title: "My profile",
                trailing: Icons.arrow_forward_ios,
              ),
              createDivider(),
              createListtile(
                leading: Icons.notifications,
                title: "Reminder",
                trailing: Icons.arrow_forward_ios,
              ),
              createDivider(),
              createContainer(title: "Workout"),
              createListtile(
                leading: Icons.free_breakfast,
                title: "Rest Set",
                trailing: Icons.arrow_forward_ios,
              ),
              createDivider(),
              createListtile(
                leading: Icons.timer,
                title: "Countdown Time",
                trailing: Icons.arrow_forward_ios,
              ),
              createDivider(),
              createListtile(
                leading: Icons.surround_sound,
                title: "Sound options",
                trailing: Icons.arrow_forward_ios,
              ),
              createDivider(),
              createContainer(title: "SUPPORT US"),
              createListtile(
                leading: Icons.star,
                title: "Rate us",
                trailing: Icons.arrow_forward_ios,
              ),
              createDivider(),
              createListtile(
                leading: Icons.feedback,
                title: "Feedback",
                trailing: Icons.arrow_forward_ios,
              ),
              createDivider(),
              createListtile(
                leading: Icons.person,
                title: "About us",
                trailing: Icons.arrow_forward_ios,
              ),
              createDivider(),
              createListtile(
                leading: Icons.chrome_reader_mode,
                title: "Privacy Policy",
                trailing: Icons.arrow_forward_ios,
              ),
              Divider(
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget createContainer({String title}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 50,
      width: double.infinity,
      color: Color.fromRGBO(244, 244, 244, 1.0),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: "Ubuntu",
          fontSize: 20,
        ),
      ),
    );
  }

  Widget createListtile({IconData leading, String title, IconData trailing}) {
    return ListTile(
        leading: Icon(
          leading,
          color: Colors.grey,
        ),
        title: Text(
          title,
          style: TextStyle(fontFamily: "Ubuntu"),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            title == "Rest Set" || title == "Countdown Time"
                ? Text(
                    "30 secs",
                    style: TextStyle(
                        fontFamily: "ubuntu", fontWeight: FontWeight.normal),
                  )
                : Offstage(),
            SizedBox(
              width: 5,
            ),
            Icon(
              trailing,
              size: 15,
            ),
          ],
        ));
  }

  Widget createDivider() {
    return Divider(
      height: 0,
      color: Colors.grey,
      indent: MediaQuery.of(context).size.width / 6,
    );
  }
}
