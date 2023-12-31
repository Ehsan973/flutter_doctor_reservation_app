import 'package:doctor_appointment_app/screens/doctor_profile_screen.dart';
import 'package:doctor_appointment_app/screens/home_screen.dart';
import 'package:doctor_appointment_app/screens/user_profile_screen.dart';
import 'package:doctor_appointment_app/screens/welcome_screen.dart';
import 'package:doctor_appointment_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'iranSans'),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

