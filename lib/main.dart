import 'package:flutter/material.dart';
import 'package:pos/ui/login_screen.dart';
import 'package:pos/ui/main_screen.dart';
import 'package:pos/ui/splash_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/log-in': (context) => LoginScreen(),
        '/main': (context) => MainScreen(),
      },
    );
  }
}