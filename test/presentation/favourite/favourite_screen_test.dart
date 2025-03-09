import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_app/presentation/favourite/favourite_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  testWidgets('FavouriteScreen displays "No favorites added yet." initially',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          ProviderScope(
            child: MaterialApp(home: FavouriteScreen()),
          ),
        );

        expect(find.text('No favorites added yet.'), findsOneWidget);
      });
}

