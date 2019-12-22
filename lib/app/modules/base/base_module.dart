import 'package:udemy_web/app/modules/base/base_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:udemy_web/app/modules/base/base_page.dart';

class BaseModule extends ModuleWidget {
  final String title;
  final Widget body;
  BaseModule({@required this.title, @required this.body});

  @override
  List<Bloc> get blocs => [
        Bloc((i) => BaseBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => BasePage(title: title, body: body);

  static Inject get to => Inject<BaseModule>.of();
}
