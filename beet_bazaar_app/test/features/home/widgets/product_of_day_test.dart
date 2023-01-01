import 'package:beet_bazaar_app/features/account/widgets/bottom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  group('Bottom Buttons Unit Tests', () {
    testWidgets('Log Out button exists', (WidgetTester tester) async {
      Widget testWidget = const MediaQuery(
          data: MediaQueryData(), child: MaterialApp(home: BottomButtons()));
      await tester.pumpWidget(testWidget);

      expect(find.text('Product of the Day'), findsOneWidget);
    });
    testWidgets('Delete Account button exists', (WidgetTester tester) async {
      Widget testWidget = const MediaQuery(
          data: MediaQueryData(), child: MaterialApp(home: BottomButtons()));
      await tester.pumpWidget(testWidget);

      expect(find.text('Delete Account'), findsOneWidget);
    });
  });
  group('Bottom Buttons Widget Tests', () {
    testWidgets('Button Column is in the right place',
        (WidgetTester tester) async {
      const testKey = Key('bottomButtonsCol');
      Widget testWidget = const MediaQuery(
          data: MediaQueryData(), child: MaterialApp(home: BottomButtons()));
      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
    testWidgets('Column has the wanted Row', (WidgetTester tester) async {
      const testKey = Key('bottomButtonsColRow');
      Widget testWidget = const MediaQuery(
          data: MediaQueryData(), child: MaterialApp(home: BottomButtons()));
      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
    testWidgets('Column and Row has the child Column',
        (WidgetTester tester) async {
      const testKey = Key('bottomButtonsColRowCol');
      Widget testWidget = const MediaQuery(
          data: MediaQueryData(), child: MaterialApp(home: BottomButtons()));
      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
    testWidgets('child Column has the Log Out button',
        (WidgetTester tester) async {
      const testKey = Key('bottomButtonsLogoutButton');
      Widget testWidget = const MediaQuery(
          data: MediaQueryData(), child: MaterialApp(home: BottomButtons()));
      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
    testWidgets('child Column has the Delete button',
        (WidgetTester tester) async {
      const testKey = Key('bottomButtonsDeleteButton');
      Widget testWidget = const MediaQuery(
          data: MediaQueryData(), child: MaterialApp(home: BottomButtons()));
      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
    testWidgets(
        'child Column has the empty space between Log Out and Delete buttons',
        (WidgetTester tester) async {
      const testKey = Key('bottomButtonsColRowColSizedBox');
      Widget testWidget = const MediaQuery(
          data: MediaQueryData(), child: MaterialApp(home: BottomButtons()));
      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
  });
}
