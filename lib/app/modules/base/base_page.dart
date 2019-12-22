import 'package:flutter/material.dart';

import 'package:udemy_web/app/shared/constants.dart';

import 'package:udemy_web/app/shared/widgets/menu.dart';

class BasePage extends StatefulWidget {
  final String title;
  final Widget body;
  const BasePage({Key key, @required this.title, @required this.body})
      : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  Size get size => MediaQuery.of(context).size;
  bool get showDrawer => size.width <= 760;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${widget.title} ${size.height} Largura ${size.width}'),
          automaticallyImplyLeading: showDrawer,
        ),
        drawer: Drawer(
          child: _menu(),
        ),
        body: _body());
  }

  Widget _body() {
    return showDrawer
        ? _right()
        : Row(
            children: <Widget>[_menu(), widget.body],
          );
  }

  Widget _menu() {
    return Container(
      width: MENUWIDTH,
      color: Colors.blue[100],
      child: ListView(
        children: <Widget>[
          MenuItem(
            icon: Icons.home,
            isSelect: false,
            route: '/home',
            text: 'Home',
          ),
        ],
      ),
    );
  }

  Widget _right() {
    return Container(
      width: showDrawer ? size.width : size.width - MENUWIDTH,
      color: Colors.grey[100],
    );
  }
}
