import 'package:arnold/screens/AboutScreen.dart';
import 'package:arnold/screens/ExerciseScreen.dart';
import 'package:arnold/screens/ForgotScreen.dart';
import 'package:arnold/screens/HomeScreen.dart';
import 'package:arnold/screens/LoginScreen.dart';
import 'package:arnold/screens/MuscleDetailScreen.dart';
import 'package:arnold/screens/MuscleScreen.dart';
import 'package:arnold/screens/PageScreen.dart';
import 'package:arnold/screens/ReportScreen.dart';
import 'package:arnold/screens/SettingScreen.dart';
import 'package:arnold/screens/SignupScreen.dart';
import 'package:arnold/screens/WelcomeScreen.dart';
import 'package:arnold/screens/WorkoutDetailScreen.dart';
import 'package:arnold/screens/WorkoutScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arnold',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black)
        ),
        
      ),
      // home: WelcomePage(),
      initialRoute: '/',
      routes: {
        "/":(context)=>WelcomeScreen(),
        "/loginScreen":(context)=>LoginScreen(),
        "/signScreen":(context)=>SignupScreen(),
        "/homeScreen":(context)=>HomeScreen(),
        "/settingScreen":(context)=>SettingScreen(),
        "/workoutScreen":(context)=>WorkoutScreen(),
        "/musclesScreen":(context)=>MusclesScreen(),
        "/reportScreen":(context)=>ReportScreen(),
        "/workoutDetailScreen":(context)=>WorkoutDetailScreen(),
        "/musclesDetailScreen":(context)=>MusclesDetailScreen(),
        "/aboutScreen":(context)=>AboutScreen(),
        "/exerciseScreen":(context)=>ExcerciseScreen(),
        "/forgotScreen":(context)=>ForgrtPasswordScreen(),
        "/pageScreen":(context)=>PageScreen(),
      },
    
    );
  }
}
