import 'package:doctor_appointment_app/screens/forget_password_screen.dart';
import 'package:doctor_appointment_app/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/form_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leadingWidth: 250,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16, top: 12, right: 16),
            child: Text(
              isArabic ? 'تسجیل الدخول' : 'Sign in',
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 8, right: 16),
              child: Row(
                children: [
                  Text(
                    isArabic ? 'هل لدیک حسابا؟' : 'Already have an account?',
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      isArabic ? 'أنشئ حساباً!' : 'Sign Up!',
                    ),
                  ),
                ],
              ),
            ),
            FormTextField(text: isArabic ? 'رقم الجوال' : 'Phone Number'),
            FormTextField(text: isArabic ? 'کلمة المرور' : 'Password'),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgetPasswordScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  isArabic ? 'نسیت کلمة المرور؟' : 'Forget your Password?',
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  isArabic ? 'سجّل الدخول' : 'Sign in',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
