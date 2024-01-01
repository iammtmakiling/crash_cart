import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Container(child: Center(child: Text('Home Page'))),
    Container(child: Center(child: Text('History Page'))),
    Container(child: Center(child: Text('Instructions Page'))),
    Container(child: Center(child: Text('Profile Page'))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Instructions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        backgroundColor: Colors.cyan, // Set a transparent background
        elevation: 0, // No shadow
        selectedItemColor: Colors.indigo, // Active tab text and icon color
        unselectedItemColor: Colors.white, // Inactive tab text and icon color
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
