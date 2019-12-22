import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/Material.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:udemy_web/app/modules/base/base_page.dart';

main() {
  testWidgets('BasePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(BasePage(
      title: 'Base',
      body: Container(),
    )));
    final titleFinder = find.text('Base');
    expect(titleFinder, findsOneWidget);
  });
}
