// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:learnflutter/main.dart';

import '../lib/screens/home_screens/home_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:learnflutter/main.dart' as app;
import 'package:flutter/material.dart';

void main() async {
  //IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  group('Widget test', () {
    testWidgets('tap on the search bar', (WidgetTester tester) async {
      //app.main();
      await tester.pumpWidget(MyApp());
      await tester.pumpAndSettle();
      await tester.pump(Duration(seconds: 2));
      final Finder searchField = find.byKey(ValueKey('search'));

      expect(searchField, findsOneWidget);

      await tester.enterText(searchField, "testSearch");
      await tester.pump(Duration(seconds: 2));

      expect(find.text("testSearch"), findsOneWidget);
      
    });

    testWidgets('tap on song card', (WidgetTester tester) async {
      //app.main();
      await tester.pumpWidget(MyApp());
      await tester.pumpAndSettle();
      await tester.pump(Duration(seconds: 2));

      final Finder songCard = find.byKey(ValueKey('songCard'));

      await tester.tap(songCard);

      await tester.pump(Duration(seconds: 2));
    });

    testWidgets('tap on playlist card', (WidgetTester tester) async {
      //app.main();
      await tester.pumpWidget(MyApp());
      await tester.pumpAndSettle();
      await tester.pump(Duration(seconds: 2));

      final Finder playlistCard = find.byKey(ValueKey('playlistCard'));

      await tester.tap(playlistCard);

      await tester.pump(Duration(seconds: 2));
    });
  });
}
