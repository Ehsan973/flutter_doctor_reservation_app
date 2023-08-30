import 'dart:ffi';

import 'package:doctor_appointment_app/constants.dart';
import 'package:doctor_appointment_app/data/model/category.dart';
import 'package:doctor_appointment_app/data/model/doctor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Doctor> doctor_list = [];
  List<CategoryDoctor> categories = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories.add(CategoryDoctor('متخصص اطفال', 'Pediatrician.svg'));
    categories.add(CategoryDoctor('جراح مغز و اعصاب', 'Neurosurgeon.svg'));
    categories.add(CategoryDoctor('متخصص قلب', 'Cardiologist.svg'));
    categories.add(CategoryDoctor('روانپزشک', 'Psychiatrist.svg'));
    doctor_list.add(
      Doctor(
        'دکتر سالینا زمان',
        'متخصص پزشکی و قلب',
        'خیابان امام، کوچه برخوردار، پلاک سیزده',
        'کلینیک سلامتی خوب',
        'Salina_Zaman.png',
        2501,
        4.2,
      ),
    );
    doctor_list.add(
      Doctor(
        'دکتر سالینا زمان',
        'متخصص پزشکی و قلب',
        'خیابان امام، کوچه برخوردار، پلاک سیزده',
        'کلینیک سلامتی خوب',
        'Salina_Zaman.png',
        2501,
        4.2,
      ),
    );
    doctor_list.add(
      Doctor(
        'دکتر سالینا زمان',
        'متخصص پزشکی و قلب',
        'خیابان امام، کوچه برخوردار، پلاک سیزده',
        'کلینیک سلامتی خوب',
        'Salina_Zaman.png',
        2501,
        4.2,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.grey[600],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.message_outlined,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 12,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: RangeMaintainingScrollPhysics(),
                itemCount: doctor_list.length,
                itemBuilder: (context, index) {
                  return _getRecommendedCard(doctor_list[index], index);
                },
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[800],
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 23 / 100,
                    margin: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/${categories[index].image}',
                          width: 35,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          categories[index].name,
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Avialable Doctor',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[800],
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 13,
              child: Text(''),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
          ],
        ),
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

  Widget _getRecommendedCard(Doctor doctor, int index) {
    return Container(
      width: MediaQuery.of(context).size.width / 100 * 84,
      margin: EdgeInsets.only(
        left: index == 0
            ? MediaQuery.of(context).size.width / 100 * 8
            : MediaQuery.of(context).size.width / 100 * 2,
        right: index == doctor_list.length - 1
            ? MediaQuery.of(context).size.width / 100 * 8
            : MediaQuery.of(context).size.width / 100 * 2,
      ),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    'آیا به دنبال متخصص مورد نظر خود می گردید؟',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Row(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 1.5),
                        color: Colors.white,
                        width: 2,
                        height: 57,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${doctor.name}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${doctor.special}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '${doctor.office_type}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Image(
              image: AssetImage('assets/images/${doctor.image_name}'),
            )
          ],
        ),
      ),
    );
  }
}
