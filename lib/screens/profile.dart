import 'package:flutter/material.dart';

import '../components/app_bar.dart';
import '../components/avatar.dart';
import '../components/mzuri_list_tile.dart';
import '../constants.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(children: [
        Container(
          height: screenHeight * .18,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: blueGradient,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned(
          top: screenHeight * .18 - avatarRadius,
          left: MediaQuery.of(context).size.width / 2 - avatarRadius,
          child: Avatar(),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MzuriAppBar(),
              ),
              SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'PERSONAL',
                  style: titleStyle,
                ),
              ),
              MzuriListTile(
                title: 'Personal Details',
                routeName: 'personalDetails',
              ),
              MzuriListTile(
                title: 'Change Password',
                routeName: 'otpScreen',
              ),
              spacerH16,
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'BUSINESS',
                  style: titleStyle,
                ),
              ),
              MzuriListTile(
                title: 'Ada & Sons',
                routeName: 'businessDetails',
              ),
              ListTile(
                tileColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                leading: Icon(
                  Icons.add,
                  color: mzuriBlue,
                ),
                onTap: () => Navigator.pushNamed(context, 'addBusiness'),
                title: Text(
                  'Add Business',
                  style: TextStyle(
                    color: mzuriBlue,
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
