import 'package:beet_bazaar_app/common/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  group('Custom Button Unit Tests', () {
    testWidgets('Button shows custom text', (WidgetTester tester) async {
      Widget testWidget = MaterialApp(
          home: CustomButton(
              text: 'Custom Text',
              onTap: () {
                return;
              }));
      await tester.pumpWidget(testWidget);

      expect(find.text('Custom Text'), findsOneWidget);
    });
  });

  group('Custom Button Widget Alignment Tests', () {
    testWidgets('Elevated Button is in correct place',
        (WidgetTester tester) async {
      const testKey = Key('elevatedButton');
      Widget testWidget = MaterialApp(
          home: CustomButton(
              text: 'Custom Text',
              onTap: () {
                return;
              }));
      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
    testWidgets('Wanted button text is in correct place',
        (WidgetTester tester) async {
      const testKey = Key('elevatedButtonText');
      Widget testWidget = MaterialApp(
          home: CustomButton(
              text: 'Custom Text',
              onTap: () {
                return;
              }));
      await tester.pumpWidget(testWidget);

      expect(find.byKey(testKey), findsOneWidget);
    });
  });
}
