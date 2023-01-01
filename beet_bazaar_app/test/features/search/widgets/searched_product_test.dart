import 'package:beet_bazaar_app/common/widgets/custom_button.dart';
import 'package:beet_bazaar_app/features/search/widget/searched_product.dart';
import 'package:beet_bazaar_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockBuildContext extends Mock implements BuildContext {}

var mockProduct = Product(
    name: 'name',
    description: 'description',
    images: ['assets/images/books.jpeg'],
    quantity: 1,
    price: 1,
    category: 'Mobiles');

void main() {
  group('Custom Button Unit Tests', () {
    testWidgets('Button Custom Text Test', (WidgetTester tester) async {
      Widget testWidget = MaterialApp(
          home: SearchedProduct(
        product: mockProduct,
      ));
      await tester.pumpWidget(testWidget);
      expect(find.text('name'), findsOneWidget);
    });
  });

  group('Custom Button Widgets Tests', () {
    testWidgets('Button Keys Test', (WidgetTester tester) async {
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
    testWidgets('Button Keys Test', (WidgetTester tester) async {
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
