import 'package:doctor_appointment_app/constants.dart';
import 'package:doctor_appointment_app/screens/main_screen.dart';
import 'package:doctor_appointment_app/screens/sign_in_screen.dart';
import 'package:doctor_appointment_app/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 79, 255),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            'assets/icons/splash_bg.svg',
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(120, 255, 149, 0),
                            // primaryColor,
                            Color.fromARGB(100, 0, 245, 253),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Text(
                              'PY',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 50,
                                // color: primaryColor,
                                // fontWeight: FontWeight.bold,
                                letterSpacing: 5,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 2.5
                                  ..color = primaryColor,
                              ),
                            ),
                            Text(
                              'PY',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 50,
                                letterSpacing: 5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: ElevatedButton(
                    onPressed: () {
                      //Go to Sign up Screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      isArabic ? 'أنشئ حساباً' : 'Sign Up',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 47),
                      backgroundColor: Color.fromARGB(255, 0, 245, 253),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: OutlinedButton(
                    onPressed: () {
                      //Go to Sign in screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ),
                      );
                    },
                    child: Text(
                      isArabic ? 'سجّل الدخول' : 'Sign in',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(double.infinity, 45),
                      side: BorderSide(
                        width: 2,
                        color: Color.fromARGB(255, 0, 245, 253),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen(),
                      ),
                    );
                  },
                  child: Text(
                    isArabic ? 'انتقل إلی الرئیسیة' : 'skip to home',
                    style: TextStyle(color: backgroundColor),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
