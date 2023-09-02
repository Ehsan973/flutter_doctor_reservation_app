import 'package:doctor_appointment_app/constants.dart';
import 'package:doctor_appointment_app/data/model/doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorProfileScreen extends StatefulWidget {
  DoctorProfileScreen({super.key, required Doctor this.doctor1});

  Doctor doctor1;

  @override
  State<DoctorProfileScreen> createState() => _DoctorProfileScreenState();
}

class _DoctorProfileScreenState extends State<DoctorProfileScreen> {
  Doctor? doctor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.doctor = widget.doctor1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          '${doctor!.name}',
          style: TextStyle(color: textColor),
        ),
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                      'assets/images/${doctor!.big_preview_image_name}'),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              _getButtonsRow(),
              SizedBox(
                height: 16,
              ),
              Text(
                '${doctor!.special}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('${doctor!.office_type}'),
              SizedBox(
                height: 4,
              ),
              RatingBar.builder(
                initialRating: doctor!.stars,
                allowHalfRating: true,
                textDirection: TextDirection.rtl,
                ignoreGestures: true,
                itemCount: 5,
                itemSize: 12,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print('rating');
                },
              ),
              SizedBox(height: 24),
              Text(
                'درباره ${doctor!.name}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '${doctor!.about}',
                style: TextStyle(
                  fontSize: 10,
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                'آدرس',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '${doctor!.address}',
                style: TextStyle(fontSize: 12),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.justify,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      minimumSize: Size(double.infinity, 45)),
                  onPressed: () {},
                  child: Text('قرار ملاقات رزرو کنید'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getButtonsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 20,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 50),
                backgroundColor: Colors.blue[300],
                padding: EdgeInsets.all(0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/Call.svg'),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'تماس صوتی',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 20,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 50),
                backgroundColor: Colors.deepPurple[300],
                padding: EdgeInsets.all(0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/Video.svg',
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'تماس ویدئویی',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 20,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 50),
                backgroundColor: Colors.amber[800]!.withOpacity(0.7),
                padding: EdgeInsets.all(0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.message,
                  size: 16,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'پیام متنی',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
