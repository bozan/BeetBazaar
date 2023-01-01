import 'package:beet_bazaar_app/features/account/widgets/delete_user_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  group('Delete User Button Unit Tests', () {
    testWidgets('Delete User Button shows the description',
        (WidgetTester tester) async {
      Widget testWidget = MaterialApp(
          home: DeleteUserButton(
              text: 'Custom Text',
              onTap: () {
                return;
              }));
      await tester.pumpWidget(testWidget);

      expect(find.text('Custom Text'), findsOneWidget);
    });
  });

  group('Delete User Button Widgets Tests', () {
    testWidgets('Delete User Button is in correct place',
        (WidgetTester tester) async {
      const testKey = Key('elevatedButton');
      Widget testWidget = MaterialApp(
          home: DeleteUserButton(
              text: 'Custom Text',
              onTap: () {
                return;
              }));
      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
    testWidgets('Delete User Button description is in correct place',
        (WidgetTester tester) async {
      const testKey = Key('elevatedButtonText');
      Widget testWidget = MaterialApp(
          home: DeleteUserButton(
              text: 'Custom Text',
              onTap: () {
                return;
              }));
      await tester.pumpWidget(testWidget);

      expect(find.byKey(testKey), findsOneWidget);
    });
  });
}
