import 'package:flutter/material.dart';
import 'package:mzuri/constants.dart';

import 'screens/add_business.dart';
import 'screens/business_details.dart';
import 'screens/change_password.dart';
import 'screens/otp.dart';
import 'screens/personal_details.dart';
import 'screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Lato',
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: scaffoldBackgroundColour,
      ),
      home: ProfileScreen(),
      routes: {
        'profile': (context) => ProfileScreen(),
        'personalDetails': (context) => PersonalDetails(),
        'businessDetails': (context) => BusinessDetails(),
        'addBusiness': (context) => AddBusiness(),
        'otpScreen': (context) => OTP(),
        'changePassword': (context) => ChangePassword(),
      },
    );
  }
}
