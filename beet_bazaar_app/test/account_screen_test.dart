import 'package:beet_bazaar_app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:beet_bazaar_app/features/account/screens/account_screen.dart';
import 'package:beet_bazaar_app/providers/user_provider.dart';

final mockUser = User(
  id: '1',
  name: 'elif',
  email: 'elif@example.com',
  password: '123',
  address: 'ITU Maslak/Istanbul',
  phone: "123456789",
  type: 'user',
  token: '',
  favs: [],
  myProducts: []
);

void main() {
  testWidgets('AccountScreen displays user all data (name, address, email, password, phone number)', (WidgetTester tester) async {
    // Build the `AccountScreen` wrapped in a `UserProvider`
    await tester.pumpWidget(
      ChangeNotifierProvider<UserProvider>(
        create: (_) => UserProvider()..setUserFromModel(mockUser),
        child: const MaterialApp(
          home: AccountScreen(),
        ),
      ),
    );

    // Check that the user's name is displayed
    expect(find.text(mockUser.name), findsOneWidget);

    // Check that the user's email is displayed
    expect(find.text(mockUser.email), findsOneWidget);

    // Check that the user's phone number is displayed
    expect(find.text(mockUser.phone), findsOneWidget);

    // Check that the user's address is displayed
    expect(find.text(mockUser.address), findsOneWidget);



  });


}
