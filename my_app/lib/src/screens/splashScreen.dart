import 'package:flutter/material.dart';
import 'homePage.dart'; // Import your home page file

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Simulate a 1-second delay using Future.delayed
    Future.delayed(Duration(seconds: 1), () {
      // Navigate to the Home Page
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });

    // You can add any loading animation or branding elements to your splash screen
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
