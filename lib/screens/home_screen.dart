import 'package:doctor_appointment_app/constants.dart';
import 'package:doctor_appointment_app/data/model/doctor.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Doctor? doctor;

  @override
  Widget build(BuildContext context) {
    doctor = Doctor(
      'پرفسور محمد تقی نور بالا',
      'متخصص پوست',
      'خیابان امام، کوچه برخوردار، پلاک سیزده',
      'مطب شخصی',
      2501,
      4.2,
    );
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(),
      ),
      bottomNavigationBar: Container(
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
                text: 'خانه',
              ),
              GButton(
                icon: Icons.people,
                text: 'دکتر ها',
              ),
              GButton(
                icon: Icons.badge_outlined,
                text: 'وقت ملاقات',
              ),
              GButton(
                icon: Icons.person,
                text: 'پروفایل',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getDoctorCard(Doctor doctor) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        height: 100,
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  child: CircleAvatar(),
                ),
              ),
              Column(
                children: [
                  Text(doctor.name),
                  Text(doctor.expert),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
