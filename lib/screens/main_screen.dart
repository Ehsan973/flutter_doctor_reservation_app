import 'package:doctor_appointment_app/screens/appointments_screen.dart';
import 'package:doctor_appointment_app/screens/doctors_screen.dart';
import 'package:doctor_appointment_app/screens/home_screen.dart';
import 'package:doctor_appointment_app/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedBottomNavigationBarItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: GNav(
              iconSize: 20,
              tabBackgroundColor: primaryColor,
              activeColor: Colors.white,
              // curve: Curves.ease,
              tabBorderRadius: 12,
              gap: 8,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: isArabic ? 'الرئیسیة' : 'خانه',
                ),
                GButton(
                  icon: Icons.people,
                  text: isArabic ? 'الأطباء' : 'دکتر ها',
                ),
                GButton(
                  icon: Icons.badge_outlined,
                  text: isArabic ? 'تعیینات' : 'وقت ملاقات',
                ),
                GButton(
                  icon: Icons.person,
                  text: isArabic ? 'حساب تعریفي' : 'پروفایل',
                ),
              ],
              onTabChange: (index) {
                setState(() {
                  _selectedBottomNavigationBarItem = index;
                });
              },
            ),
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedBottomNavigationBarItem,
        children: getLayout(),
      ),
    );
  }

  List<Widget> getLayout() {
    return <Widget>[
      HomeScreen(),
      DoctorsScreen(),
      AppointmentsScreen(),
      UserProfileScreen(),
    ];
  }
}
