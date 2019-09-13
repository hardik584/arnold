import 'package:arnold/styles/LoginStyle.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  loginFooter(context)
                ],
              ),
            ),
          ),
        )
      ],
    );
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
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
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
            TextFormField(
              decoration: InputDecoration(
                  // labelText: "Email Address",
                  hintText: "PassWord",
                  contentPadding: EdgeInsets.fromLTRB(00, 10, 10, 10),
                  hintStyle: LoginStyle.loginTextfield),
            ),
            Container(
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context,'/forgotScreen');
                },
                padding: EdgeInsets.zero,
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.left,
                  style: LoginStyle.loginForgotPassword,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/homeScreen');
                    },
                    color: Colors.black,
                    height: 35,
                    child: Text(
                      'Login',
                      style: LoginStyle.loginButton,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.blue.shade900,
                    height: 35,
                    child: Text(
                      'Facebook',
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

Widget loginFooter(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "Don't have an account?",
        style: LoginStyle.loginSignupButton,
        textAlign: TextAlign.center,
      ),
      FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/signScreen');
        },
        padding: EdgeInsets.zero,
        child: Text(
          "Sign Up",
          style: LoginStyle.loginSignupButton,
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
}