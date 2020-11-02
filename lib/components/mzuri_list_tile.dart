import 'package:flutter/material.dart';

class MzuriListTile extends StatelessWidget {
  final String title;
  final String routeName;
  final IconData icon;

  const MzuriListTile(
      {Key key,
      @required this.title,
      @required this.routeName,
      this.icon = Icons.keyboard_arrow_right})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
      title: Text(
        title,
      ),
      onTap: () => Navigator.pushNamed(context, routeName),
      trailing: Icon(icon),
    );
  }
}
