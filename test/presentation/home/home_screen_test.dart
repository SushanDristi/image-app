import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_app/presentation/home/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  testWidgets('HomeScreen displays search bar and message when empty',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          ProviderScope(
            child: MaterialApp(home: HomeScreen()),
          ),
        );

        expect(find.text('Type something and press search'), findsOneWidget);
        expect(find.byType(TextField), findsOneWidget);
      });

  testWidgets('Clicking search button triggers API call',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          ProviderScope(
            child: MaterialApp(home: HomeScreen()),
          ),
        );

        await tester.enterText(find.byType(TextField), 'Nature');
        await tester.tap(find.byIcon(Icons.search));
        await tester.pump();

        expect(find.text('Nature'), findsOneWidget);
      });
}