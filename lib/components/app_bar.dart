import 'package:flutter/material.dart';

class MzuriAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MenuIcon(),
        Text(
          'Profile',
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: Colors.white),
        ),
        SizedBox(
          height: 24,
          width: 24,
        )
      ],
    );
  }
}

class MenuIcon extends StatelessWidget {
  const MenuIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 2,
            width: 24,
            color: Colors.white,
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            height: 2,
            width: 24,
            color: Colors.white,
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            height: 2,
            width: 12,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
