import 'package:flutter/material.dart';
import '../tabs/tabs.dart';
import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeTab(),
    const StreamTab(),
    const InstructionsTab(),
    const ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.cyan, Colors.indigo],
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: _currentIndex == 0
                    ? const Icon(Icons.home)
                    : const Icon(Icons.home_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _currentIndex == 1
                    ? const Icon(Icons.insert_drive_file)
                    : const Icon(Icons.insert_drive_file_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _currentIndex == 2
                    ? const Icon(Icons.info)
                    : const Icon(Icons.info_outline),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _currentIndex == 3
                    ? const Icon(Icons.person)
                    : const Icon(Icons.person_outline),
                label: '',
              ),
            ],
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
          ),
        ));
  }
}
