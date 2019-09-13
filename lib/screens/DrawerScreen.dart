import 'package:flutter/material.dart';

var text =
    TextStyle(fontSize: 15, fontFamily: 'Ubuntu', color: Colors.grey[600]);
var padding = EdgeInsets.fromLTRB(00, 00, 00, 00);

class DrawerScreen extends StatefulWidget {
  DrawerScreen({Key key}) : super(key: key);

  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: <Widget>[
            // SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('images/dp.jpeg'),
                      )),
                ),
                SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text('Micheal Doe',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 3,
                    ),
                    Text('Latest Weight',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontFamily: 'Ubuntu',
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    RichText(
                      text: TextSpan(
                          text: '75',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w900),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'kg',
                                style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500))
                          ]),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/homeScreen");
              },
              dense: true,
              contentPadding: padding,
              title: Text(
                'HOME',
                style: text,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/workoutScreen");
              },
              dense: true,
              contentPadding: padding,
              title: Text(
                'WORKOUT',
                style: text,
              ),
            ),

            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/musclesScreen");
              },
              dense: true,
              contentPadding: padding,
              title: Text(
                'MUSCLES BUILDING',
                style: text,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/reportScreen");
              },
              dense: true,
              contentPadding: padding,
              title: Text(
                'REPORT & TRACKING',
                style: text,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/settingScreen");
              },
              contentPadding: padding,
              dense: true,
              title: Text(
                'SETTINGS',
                style: text,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/pageScreen");
              },
              dense: true,
              contentPadding: padding,
              title: Text(
                'PAGES',
                style: text,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/aboutScreen");
              },
              dense: true,
              contentPadding: padding,
              title: Text(
                'ABOUT US',
                style: text,
              ),
            ),

            ButtonBar(
              alignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  iconSize: 25,
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage(
                      'images/facebook.png',
                    ),
                  ),
                ),
                IconButton(
                  iconSize: 25,
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage(
                      'images/twitter.png',
                    ),
                  ),
                ),
                IconButton(
                  iconSize: 25,
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage(
                      'images/instagram.png',
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
