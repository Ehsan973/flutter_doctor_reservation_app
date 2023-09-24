import 'dart:ffi';

import 'package:doctor_appointment_app/constants.dart';
import 'package:doctor_appointment_app/data/model/category.dart';
import 'package:doctor_appointment_app/data/model/doctor.dart';
import 'package:doctor_appointment_app/screens/doctor_profile_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
        'Salina_Zaman.png',
        'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است. ',
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
        'Salina_Zaman.png',
        'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است. ',
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
        'Salina_Zaman.png',
        'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است. ',
        2501,
        4.2,
      ),
    );
    doctor_list.add(
      Doctor(
        'دکتر سرنا گومز',
        'متخصص پزشکی',
        'خیابان امام، کوچه برخوردار، پلاک سیزده',
        'کلینیک سلامتی خوب',
        'Serena_Gome.png',
        'doctor_big_preview.png',
        'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است. ',
        2051,
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
                reverse: true,
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
                      'دیدن همه',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[800],
                      ),
                    ),
                    Text(
                      'دسته بندی ها',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ListView.builder(
                reverse: true,
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return _getCategoryCard(categories[index], index);
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
                      'دیدن همه',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[800],
                      ),
                    ),
                    Text(
                      'دکتر های در دسترس',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 13,
              child: ListView.builder(
                reverse: true,
                scrollDirection: Axis.horizontal,
                itemCount: doctor_list.length,
                itemBuilder: (context, index) {
                  return _getAvailableDoctorCard(doctor_list[index], index);
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getRecommendedCard(Doctor doctor, int index) {
    return Container(
      width: MediaQuery.of(context).size.width / 100 * 84,
      margin: EdgeInsets.only(
        left: index == doctor_list.length - 1
            ? MediaQuery.of(context).size.width / 100 * 8
            : MediaQuery.of(context).size.width / 100 * 2,
        right: index == 0
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

  Widget _getAvailableDoctorCard(Doctor doctor, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DoctorProfileScreen(doctor1: doctor),
          ),
        );
      },
      child: Container(
        height: double.infinity,
        margin: EdgeInsets.only(
          left: index == doctor_list.length - 1 ? 16 : 8,
          right: index == 0 ? 16 : 8,
          top: 2,
          bottom: 2,
        ),
        width: MediaQuery.of(context).size.width * 72 / 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Image.asset('assets/images/${doctor.image_name}'),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                      '${doctor.name}',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      '${doctor.special}',
                      style: TextStyle(
                        fontSize: 10,
                        color: textColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: RatingBar.builder(
                        initialRating: doctor.stars,
                        textDirection: TextDirection.rtl,
                        allowHalfRating: true,
                        ignoreGestures: true,
                        itemCount: 5,
                        itemSize: 12,
                        itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                        onRatingUpdate: (rating) {
                          print('rating');
                        }),
                  ),
                  Text(
                    'کلینیک',
                    style: TextStyle(
                      fontSize: 9,
                    ),
                  ),
                  Text(
                    '${doctor.office_type}',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'بازدید ها',
                    style: TextStyle(
                      fontSize: 9,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Text(
                      '${doctor.views}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getCategoryCard(CategoryDoctor category, int index) {
    return Container(
      width: MediaQuery.of(context).size.width * 24 / 100,
      margin: EdgeInsets.only(
        right: index == 0 ? 14 : 7,
        left: index == categories.length - 1 ? 14 : 7,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/${category.image}',
            width: 38,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            category.name,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
