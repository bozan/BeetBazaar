import 'package:beet_bazaar_app/features/account/screens/add_product_screen.dart';
import 'package:beet_bazaar_app/features/account/services/seller_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/testing.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Add Product Screen shows product image input field', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AddProductScreen(),
      ),
    );
     
    var image = find.text('Select Product Images');
    expect(image, findsOneWidget);
    
  });

  testWidgets('Add Product Screen shows product price input field', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AddProductScreen(),
      ),
    );
     
    var price = find.byKey(const Key("price"));
    expect(price, findsOneWidget);
    
  });

  testWidgets('Add Product Screen shows product name input field', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AddProductScreen(),
      ),
    );
     
    var name = find.byKey(const Key("productName"));
    expect(name, findsOneWidget);

  });


  testWidgets('Add Product Screen shows product description input field', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AddProductScreen(),
      ),
    );
     
    var description = find.byKey(const Key("description"));
    expect(description, findsOneWidget);
    
  });

  testWidgets('Add Product Screen shows product quantity input field', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AddProductScreen(),
      ),
    );
     
    var quantity = find.byKey(const Key("quantity"));
    expect(quantity, findsOneWidget);
    
  });

}
