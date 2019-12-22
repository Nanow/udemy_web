import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:udemy_web/app/modules/base/base_bloc.dart';
import 'package:udemy_web/app/modules/base/base_module.dart';

void main() {
  initModule(BaseModule(
    title: "outro titulo",
    body: Container(),
  ));
  BaseBloc bloc;

  setUp(() {
    bloc = BaseModule.to.bloc<BaseBloc>();
  });

  group('BaseBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<BaseBloc>());
    });
  });
}
