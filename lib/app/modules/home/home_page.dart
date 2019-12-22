import 'package:flutter/material.dart';
import 'package:udemy_web/app/modules/base/base_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseModule(title: "Título", body: _body());
  }

  Widget _body() {
    return Container();
  }
}
