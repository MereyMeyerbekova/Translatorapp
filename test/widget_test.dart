import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:translate_system/main.dart';

void main() {
  testWidgets('Login screen displays correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Find the email and password text fields.
    final emailTextField = find.byKey(Key('emailTextField'));
    final passwordTextField = find.byKey(Key('passwordTextField'));

    // Verify that the text fields are initially empty.
    expect((emailTextField.evaluate() as TextField).controller!.text, '');
    expect((passwordTextField.evaluate() as TextField).controller!.text, '');

    // Enter text into the email and password text fields.
    await tester.enterText(emailTextField, 'test@example.com');
    await tester.enterText(passwordTextField, 'password');

    // Verify that the text fields contain the entered text.
    expect((emailTextField.evaluate() as TextField).controller!.text, 'test@example.com');
    expect((passwordTextField.evaluate() as TextField).controller!.text, 'password');

    // Find and tap the login button.
    final loginButton = find.byKey(Key('loginButton'));
    await tester.tap(loginButton);
    await tester.pumpAndSettle();

    // Verify that we are on the home screen.
    expect(find.text('Welcome to the Home Screen!'), findsOneWidget);
  });
}

