import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../screens/splashScreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool isAuthenticated = false; // Add a variable to track authentication
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //Dummy Credentials
  String password = "a";
  String username = "a";

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
            colors: [Colors.cyan, Colors.indigo],
          ),
        ),
        child: Center(
          child: Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max, // Set mainAxisSize to max
                mainAxisAlignment: MainAxisAlignment.center,
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
                      color: Colors.cyan,
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  SizedBox(
                    width: screenWidth * 0.7,
                    child: Column(
                      children: [
                        CustomTextField(
                          labelText: 'Username',
                          prefixIcon: Icons.person,
                          controller: usernameController,
                          obscureText: false,
                        ),
                        const SizedBox(height: 20.0),
                        CustomTextField(
                          labelText: 'Password',
                          prefixIcon: Icons.lock,
                          controller: passwordController,
                          obscureText: true,
                        ),
                        const SizedBox(height: 16.0),
                        CustomButton(
                          text: 'Login',
                          width: double.infinity,
                          height: 42,
                          onPressed: () {
                            setState(() {
                              if (username == usernameController.text &&
                                  password == passwordController.text) {
                                isAuthenticated = true;
                              }
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
