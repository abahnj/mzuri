import 'package:flutter/material.dart';
import 'package:mzuri/components/edit_app_bar.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import '../constants.dart';

class OTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EditAppBar(context: context, enabled: true, onTap: null),
              spacerH32,
              Text(
                'OTP Verification',
                style: titleStyle,
              ),
              spacerH16,
              Text(
                  'An OTP code was sent to your phone and email kindly input the code below.'),
              spacerH32,
              Center(
                child: PinCodeTextField(
                  autofocus: true,
                  controller: TextEditingController(),
                  hideCharacter: true,
                  highlight: true,
                  highlightColor: Colors.blue,
                  defaultBorderColor: Color(0xffeaeaea),
                  hasTextBorderColor: Colors.green,
                  maxLength: 4,
                  pinBoxRadius: 4,
                  hasError: false,
                  maskCharacter: "😎",
                  onTextChanged: (text) {},
                  onDone: (text) {
                    print("DONE $text");
                  },
                  pinBoxWidth: 48,
                  pinBoxBorderWidth: 1,
                  pinBoxHeight: 48,
                  wrapAlignment: WrapAlignment.spaceAround,
                  pinBoxDecoration: (
                    Color borderColor,
                    Color pinBoxColor, {
                    double borderWidth = 2.0,
                    double radius = 5.0,
                  }) {
                    return BoxDecoration(
                      border: Border.all(
                        color: borderColor,
                        width: borderWidth,
                      ),
                      color: pinBoxColor,
                      borderRadius: BorderRadius.circular(radius),
                    );
                  },
                  pinTextStyle: TextStyle(fontSize: 22.0),
                  pinTextAnimatedSwitcherTransition:
                      ProvidedPinBoxTextAnimation.scalingTransition,
                  pinBoxColor: Color(0xfff9f9f9),
                  pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
                  //highlightAnimation: true,
                  highlightAnimationBeginColor: Colors.black,
                  highlightAnimationEndColor: Colors.white12,
                  keyboardType: TextInputType.number,
                ),
              ),
              spacerH32,
              spacerH32,
              spacerH32,
              spacerH32,
              Container(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'changePassword');
                  },
                  color: mzuriBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
