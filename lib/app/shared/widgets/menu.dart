import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String route;
  final IconData icon;
  final String text;
  final bool isSelect;

  const MenuItem(
      {Key key,
      @required this.route,
      @required this.icon,
      @required this.text,
      @required this.isSelect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: ListTile(
          title: Text(this.text),
          leading: Icon(icon),
        ),
      ),
    );
  }
}
