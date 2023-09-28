import 'package:doctor_appointment_app/constants.dart';
import 'package:doctor_appointment_app/screens/sign_in_screen.dart';
import 'package:doctor_appointment_app/widgets/form_text_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16, top: 12),
          child: Text(
            'Sign Up',
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16, bottom: 8),
            child: Row(
              children: [
                Text('Already have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ),
                    );
                  },
                  child: Text('Sign in!'),
                ),
              ],
            ),
          ),
          FormTextField(text: 'Full Name'),
          FormTextField(text: 'Phone Number'),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Sing Up',
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
    );
  }
}
