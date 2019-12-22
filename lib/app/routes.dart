import 'package:flutter/material.dart';
import 'package:udemy_web/app/modules/home/home_module.dart';
import 'package:udemy_web/app/modules/login/login_module.dart';

class AppRoutes {
  Map<String, WidgetBuilder> routeMain() {
    return {
      '/': (context) => LoginModule(),
      '/home': (context) => HomeModule()
    };
  }
}
