import 'package:beet_bazaar_app/features/account/widgets/bottom_buttons.dart';
import 'package:beet_bazaar_app/features/favs/widgets/favs_product.dart';
import 'package:beet_bazaar_app/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

class MockBuildContext extends Mock implements BuildContext {}

class MockUserProvider extends Mock implements UserProvider {}

@GenerateMocks([BuildContext])
@GenerateMocks([UserProvider])
// BuildContext _createContext() {
//   final context = MockBuildContext();
//   const mediaQuery = MediaQuery(
//     data: MediaQueryData(),
//     child: SizedBox(),
//   );
//   when(context.widget).thenReturn(const SizedBox());
//   when(context.findAncestorWidgetOfExactType()).thenReturn(mediaQuery);
//   when(context.dependOnInheritedWidgetOfExactType<MediaQuery>())
//       .thenReturn(mediaQuery);
//   when(context.getElementForInheritedWidgetOfExactType())
//       .thenReturn(InheritedElement(mediaQuery));

//   return context;
// }

void main() {
  FavsProduct sut;
  MockBuildContext _mockContext;
  MockUserProvider _mockProvider;
  //_createContext();
  setUp(() {
    sut = const FavsProduct(
      index: 0,
    );
    _mockContext = MockBuildContext();
    _mockProvider = MockUserProvider();
  });
  group('Favs Product Unit Tests', () {
    testWidgets('Decrease Button Test', (WidgetTester tester) async {
      Widget testWidget = MediaQuery(
          data: const MediaQueryData(),
          child: MaterialApp(
            home: const FavsProduct(
              index: 0,
            ),
          ));
      await tester.pumpWidget(
        Provider<UserProvider>(
          create: (_) => MockUserProvider(),
          child: testWidget,
        ),
      );
      // const icon = Icons.remove;

      expect(find.byKey(const Key('FavsProduct')), findsOneWidget);
    });
  });
}
