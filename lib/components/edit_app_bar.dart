import 'package:flutter/material.dart';

import '../constants.dart';

class EditAppBar extends StatelessWidget {
  final BuildContext context;
  final bool enabled;
  final VoidCallback onTap;
  const EditAppBar({
    Key key,
    this.context,
    this.enabled,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: mzuriBlue,
          ),
        ),
        Spacer(),
        if (!enabled)
          TextButton(
            onPressed: onTap,
            child: Text(
              'Edit',
              style: TextStyle(
                  color: mzuriBlue, fontWeight: FontWeight.w500, fontSize: 15),
            ),
          )
      ],
    );
  }
}
