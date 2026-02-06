// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:ui';
import 'package:flutter_test/flutter_test.dart';

import 'package:concentrate_on/main.dart';

void main() {
  testWidgets('App launches and shows home screen', (WidgetTester tester) async {
    // Set a larger test size to avoid overflow
    tester.view.physicalSize = const Size(1080, 1920);
    tester.view.devicePixelRatio = 1.0;
    
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ConcentrateOnApp());

    // Verify that the app title is displayed
    expect(find.text('Concentrate ON'), findsOneWidget);

    // Verify that the timer is displayed
    expect(find.text('25:00'), findsOneWidget);

    // Verify that the start button is displayed
    expect(find.text('Start Focus'), findsOneWidget);
    
    // Reset the test size
    addTearDown(tester.view.reset);
  });

  testWidgets('Start button changes to stop button when tapped', (WidgetTester tester) async {
    // Set a larger test size to avoid overflow
    tester.view.physicalSize = const Size(1080, 1920);
    tester.view.devicePixelRatio = 1.0;
    
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ConcentrateOnApp());

    // Verify start button exists
    expect(find.text('Start Focus'), findsOneWidget);

    // Tap the start button
    await tester.tap(find.text('Start Focus'));
    await tester.pump();

    // Verify stop button appears
    expect(find.text('Stop'), findsOneWidget);
    expect(find.text('Start Focus'), findsNothing);
    
    // Reset the test size
    addTearDown(tester.view.reset);
  });
}
