import 'package:arnold/styles/LoginStyle.dart';
import 'package:flutter/material.dart';
 


class SignupScreen extends StatefulWidget {
  SignupScreen({Key key}) : super(key: key);

  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        signupBackground(context),
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
                  signupBody(context),
                  SizedBox(
                    height: 20,
                  ),
                  signupFooter(context)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
  Widget signupBackground(BuildContext context) {
  return Image.asset(
    "images/loginScreen.jpeg",
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    fit: BoxFit.cover,
    color: Colors.black38,
    colorBlendMode: BlendMode.darken,
  );
}

Widget signupBody(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
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
                  hintText: "Your Name",
                  contentPadding: EdgeInsets.fromLTRB(00, 10, 10, 10),
                  hintStyle: LoginStyle.loginTextfield),
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
            
            SizedBox(
              height: 40,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, '/loginScreen');
                    },
                    color: Colors.black,
                    height: 35,
                    child: Text(
                      'Register',
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

Widget signupFooter(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "Already have an account?",
        style: LoginStyle.loginSignupButton,
        textAlign: TextAlign.center,
      ),
      FlatButton(
        onPressed: () {
            Navigator.pushNamed(context, '/loginScreen');
        },
        padding: EdgeInsets.zero,
        child: Text(
          "Sign In",
          style:LoginStyle.loginSignupButton,
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
}


