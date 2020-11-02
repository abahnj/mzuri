import 'package:flutter/material.dart';
import 'package:mzuri/components/edit_app_bar.dart';
import 'package:mzuri/components/input.dart';

import '../constants.dart';

class ChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 2,
                  color: Color(0xfff5a623),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EditAppBar(context: context, enabled: true, onTap: () {}),
                  spacerH32,
                  Text(
                    'Change Password',
                    style: titleStyle,
                  ),
                  spacerH32,
                  Input(
                    enabled: true,
                    hintText: 'Old Password',
                    isPassword: true,
                  ),
                  spacerH32,
                  Input(
                    enabled: true,
                    hintText: 'New Password',
                    isPassword: true,
                  ),
                  spacerH32,
                  Input(
                    enabled: true,
                    hintText: 'Confirm Password',
                    isPassword: true,
                  ),
                  spacerH32,
                  spacerH32,
                  Container(
                    width: double.infinity,
                    child: FlatButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return _showAlert(context);
                            });
                      },
                      color: mzuriBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Change Password',
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
        ),
      ),
    );
  }
}

AlertDialog _showAlert(BuildContext context) {
  return AlertDialog(
    content: new Container(
      width: 260.0,
      height: 260.0,
      decoration: new BoxDecoration(
        shape: BoxShape.rectangle,
        color: const Color(0xFFFFFF),
        borderRadius: new BorderRadius.all(
          new Radius.circular(32.0),
        ),
      ),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // dialog top
          Icon(
            Icons.check_circle_rounded,
            color: Colors.green,
            size: 48,
          ),
          new Container(
            // padding: new EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
              color: Colors.white,
            ),
            child: new Text(
              'Successful',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          spacerH16,

          // dialog centre
          new Expanded(
            child: new Container(
              child: Text(
                'Your password has been changed successfully',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            flex: 2,
          ),

          // dialog bottom
          new Expanded(
            child: Center(
              child: FlatButton(
                height: double.infinity,
                minWidth: 700,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: mzuriBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
