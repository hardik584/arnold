import 'package:arnold/styles/LoginStyle.dart';
import 'package:flutter/material.dart';
 

class ForgrtPasswordScreen extends StatefulWidget {
  ForgrtPasswordScreen({Key key}) : super(key: key);

  _ForgrtPasswordScreenState createState() => _ForgrtPasswordScreenState();
}

class _ForgrtPasswordScreenState extends State<ForgrtPasswordScreen> {
  @override
  Widget build(BuildContext context) {
     return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        loginBackground(context),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Arnold', style: LoginStyle.loginHeading),
                  SizedBox(
                    height: 50,
                  ),
                  loginBody(context),
                  SizedBox(
                    height: 20,
                  ),
                 
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

Widget loginBackground(BuildContext context) {
  return Image.asset(
    "images/loginScreen.jpeg",
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    fit: BoxFit.cover,
    color: Colors.black38,
    colorBlendMode: BlendMode.darken,
  );
}

Widget loginBody(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome to Android App. Stay in shape and improve your health quickly.',
              style: LoginStyle.loginTitle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  // labelText: "Email Address",
                  hintText: "Email Address",
                  contentPadding: EdgeInsets.fromLTRB(00, 10, 10, 10),
                  hintStyle: LoginStyle.loginTextfield),
            ),
            SizedBox(
              height: 20,
            ),
         
            Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                   //   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                    },
                    color: Colors.black,
                    height: 35,
                    
                    child: Text(
                      'Send Email',
                      style: LoginStyle.loginButton,
                    ),
                  ),
                ),
               
              ],
            )
          ],
        ),
      ),
    ),
  );
}

