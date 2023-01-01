import 'package:beet_bazaar_app/features/account/widgets/delete_user_button.dart';
import 'package:beet_bazaar_app/features/account/widgets/single_product.dart';
import 'package:beet_bazaar_app/features/home/widgets/carousel_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  group('Single Product Widgets Tests', () {
    testWidgets('Single Product Keys Test', (WidgetTester tester) async {
      const testKey = Key('singleProductCon');
      const testKey2 = Key('singleProductConDecoratedBox');
      const testKey3 = Key('singleProductConContainer');
      const testKey4 = Key('singleProductConContainerImage');
      const String img = 'assets/images/books.jpg';

      Widget testWidget = const MediaQuery(
          data: MediaQueryData(),
          child: MaterialApp(
              home: SingleProduct(
            image: img,
          )));

      await tester.pumpWidget(testWidget);
      expect(find.byKey(testKey), findsOneWidget);
      expect(find.byKey(testKey2), findsOneWidget);
      expect(find.byKey(testKey3), findsOneWidget);
      expect(find.byKey(testKey4), findsOneWidget);
    });
  });
}
