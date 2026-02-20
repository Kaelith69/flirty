import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:nerd_gpt/screens/home_screen.dart';

void main() {
  testWidgets('HomeScreen shows initial greeting', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: HomeScreen(title: 'Pluto')),
    );
    expect(find.text('Hello Dear'), findsOneWidget);
  });

  testWidgets('HomeScreen shows app title', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: HomeScreen(title: 'Pluto')),
    );
    expect(find.text('Pluto'), findsOneWidget);
  });

  testWidgets('Send button is hidden when input is empty',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: HomeScreen(title: 'Pluto')),
    );
    expect(find.byType(ElevatedButton), findsNothing);
  });

  testWidgets('Send button appears when text is entered',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: HomeScreen(title: 'Pluto')),
    );
    await tester.enterText(find.byType(TextField), 'Hello');
    await tester.pump();
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
