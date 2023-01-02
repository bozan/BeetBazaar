
import 'package:beet_bazaar_app/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AuthScreen shows name input field', (WidgetTester tester) async {
    const AuthScreen auth = AuthScreen();
    await tester.pumpWidget(
      const MaterialApp(
        home: auth,
      ),
    );
     
    var nameField = find.byKey(const Key('name-field'));
    expect(nameField, findsOneWidget);

    await tester.enterText(nameField, 'Elif');
    expect(find.text('Elif'), findsOneWidget);
    
  });

  testWidgets('AuthScreen shows address input field', (WidgetTester tester) async {
    const AuthScreen auth = AuthScreen();
    await tester.pumpWidget(
      const MaterialApp(
        home: auth,
      ),
    );
     
    var nameField = find.byKey(const Key('address-field'));
    expect(nameField, findsOneWidget);

    await tester.enterText(nameField, 'Itu Maslak/Istanbul');
    expect(find.text('Itu Maslak/Istanbul'), findsOneWidget);
    
  });

  testWidgets('AuthScreen shows phone input field', (WidgetTester tester) async {
    const AuthScreen auth = AuthScreen();
    await tester.pumpWidget(
      const MaterialApp(
        home: auth,
      ),
    );
     
    var nameField = find.byKey(const Key('phone-field'));
    expect(nameField, findsOneWidget);

    await tester.enterText(nameField, '05390000000');
    expect(find.text('05390000000'), findsOneWidget);
    
  });

  testWidgets('AuthScreen shows email input field', (WidgetTester tester) async {
    const AuthScreen auth = AuthScreen();
    await tester.pumpWidget(
      const MaterialApp(
        home: auth,
      ),
    );
    var emailField = find.byKey(Key('email-field'));

    //final state = tester.state(find.byType(AuthScreen));
    //final element = state.widget.createElement(); // this will set state.widget
    //final state1 = element.state as AuthScreenState;

    expect(emailField, findsOneWidget);

    await tester.enterText(emailField, 'elfarkn01@gmail.com');
    expect(find.text('elfarkn01@gmail.com'), findsOneWidget);
    
  });
  testWidgets('AuthScreen shows password input field', (WidgetTester tester) async {

    const AuthScreen auth = AuthScreen();
    await tester.pumpWidget(
      const MaterialApp(
        home: auth,
      ),
    );

    var passwordField = (find.byKey(Key('password-field')));
    expect(passwordField, findsOneWidget);

    await tester.enterText(passwordField, '12345');
    expect(find.text('12345'), findsOneWidget);
    
  });

  testWidgets('Sign Up Button Test', (WidgetTester tester) async {
    const AuthScreen auth = AuthScreen();
    await tester.pumpWidget(
      const MaterialApp(
        home: auth,
      ),
    );

    var button = find.byKey(Key('sign-up-button'));

    expect(button, findsOneWidget); 
  });


  

}

