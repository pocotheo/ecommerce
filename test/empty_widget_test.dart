import 'package:ecommerce/widgets/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Emptpy widgets renders text correctly',
      (WidgetTester tester) async {
    const text = "No products yet";
    await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: EmptyWidget(text: text))));
    final textFinder = find.text(text);
    expect(textFinder, findsOneWidget);
  });
}
