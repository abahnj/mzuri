import 'package:flutter/material.dart';
import 'package:mzuri/constants.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: avatarRadius * 2,
          width: avatarRadius * 2,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/avatar.png'),
            ),
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 4,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(
                Icons.camera_alt_outlined,
                color: mzuriBlue,
                size: 18,
              ),
            ),
          ),
        )
      ],
    );
  }
}
