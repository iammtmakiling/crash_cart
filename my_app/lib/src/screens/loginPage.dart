import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isAuthenticated = false; // Add a variable to track authentication

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF336CFB), Color(0x006bfbce)],
          ),
        ),
        child: Center(
          child: Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const FlutterLogo(
                    size: 80.0,
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Welcome to Crash Cart',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF336CFB),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  SizedBox(
                    width: screenWidth * 0.7,
                    child: Column(
                      children: [
                        TextFormField(
                          style: const TextStyle(fontSize: 22.0),
                          decoration: InputDecoration(
                            labelText: 'Username',
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(22.0),
                              child:
                                  const Icon(Icons.person, color: Colors.grey),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        TextFormField(
                          style: const TextStyle(fontSize: 22.0),
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(22.0),
                              child: const Icon(Icons.lock, color: Colors.grey),
                            ),
                          ),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implement login functionality
                      // For simplicity, just set isAuthenticated to true for demonstration
                      setState(() {
                        isAuthenticated = true;
                      });

                      if (isAuthenticated) {
                        // Navigate to splash screen first
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => SplashScreen()),
                        );
                      } else {
                        // Handle authentication failure
                        // Show error message or take appropriate action
                      }
                    },
                    child: Text('Login'),
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You can add any loading animation or branding elements to your splash screen
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
