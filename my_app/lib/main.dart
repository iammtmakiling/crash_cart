import 'package:flutter/material.dart';
import './theme/app_theme.dart';
import './src/screens/loginPage.dart';
import './src/screens/homePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creative Login Page',
      theme: AppTheme.lightTheme,
      home: const HomePage(),
    );
  }
}
