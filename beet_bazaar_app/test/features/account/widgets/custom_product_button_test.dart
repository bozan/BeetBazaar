import 'package:beet_bazaar_app/features/account/widgets/custom_product_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  group('Custom Product Button Unit Tests', () {
    testWidgets('Button shows the wanted Custom Text',
        (WidgetTester tester) async {
      Widget testWidget = MaterialApp(
          home: CustomProductButton(
              text: 'Custom Text',
              onTap: () {
                return;
              }));
      await tester.pumpWidget(testWidget);

      expect(find.text('Custom Text'), findsOneWidget);
    });
  });

  group('Custom Product Button Widgets Tests', () {
    testWidgets('Widget has the elevated button in correct place',
        (WidgetTester tester) async {
      const testKey = Key('elevatedButton');
      Widget testWidget = MaterialApp(
          home: CustomProductButton(
              text: 'Custom Text',
              onTap: () {
                return;
              }));
      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
    testWidgets('Widget has the button description in correct place',
        (WidgetTester tester) async {
      const testKey = Key('elevatedButtonText');
      Widget testWidget = MaterialApp(
          home: CustomProductButton(
              text: 'Custom Text',
              onTap: () {
                return;
              }));
      await tester.pumpWidget(testWidget);

      expect(find.byKey(testKey), findsOneWidget);
    });
  });
}
