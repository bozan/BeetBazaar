import 'package:beet_bazaar_app/features/account/widgets/bottom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  group('Bottom Buttons Unit Tests', () {
    testWidgets('Buttons Log Out and Delete Account Text Test',
        (WidgetTester tester) async {
      Widget testWidget = const MediaQuery(
          data: MediaQueryData(), child: MaterialApp(home: BottomButtons()));
      await tester.pumpWidget(testWidget);

      expect(find.text('Log Out'), findsOneWidget);
      expect(find.text('Delete Account'), findsOneWidget);
    });
  });
  group('Bottom Buttons Widget Tests', () {
    testWidgets('Button Keys Test: Column', (WidgetTester tester) async {
      const testKey = Key('bottomButtonsCol');
      Widget testWidget = const MediaQuery(
          data: MediaQueryData(), child: MaterialApp(home: BottomButtons()));
      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
    testWidgets('Button Keys Test: Column Row', (WidgetTester tester) async {
      const testKey = Key('bottomButtonsColRow');
      Widget testWidget = const MediaQuery(
          data: MediaQueryData(), child: MaterialApp(home: BottomButtons()));
      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
    testWidgets('Button Keys Test: Column Row Column',
        (WidgetTester tester) async {
      const testKey = Key('bottomButtonsColRowCol');
      Widget testWidget = const MediaQuery(
          data: MediaQueryData(), child: MaterialApp(home: BottomButtons()));
      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
    testWidgets('Button Keys Test: Log Out', (WidgetTester tester) async {
      const testKey = Key('bottomButtonsLogoutButton');
      Widget testWidget = const MediaQuery(
          data: MediaQueryData(), child: MaterialApp(home: BottomButtons()));
      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
    testWidgets('Button Keys Test: Delete', (WidgetTester tester) async {
      const testKey = Key('bottomButtonsDeleteButton');
      Widget testWidget = const MediaQuery(
          data: MediaQueryData(), child: MaterialApp(home: BottomButtons()));
      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
    testWidgets('Button Keys Test: SizedBox', (WidgetTester tester) async {
      const testKey = Key('bottomButtonsColRowColSizedBox');
      Widget testWidget = const MediaQuery(
          data: MediaQueryData(), child: MaterialApp(home: BottomButtons()));
      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
  });
}
