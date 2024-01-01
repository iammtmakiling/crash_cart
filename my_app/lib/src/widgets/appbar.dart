import 'package:flutter/material.dart';

class CustomizedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomizedAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 128);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.cyan, Colors.indigo],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(64.0),
          bottomRight: Radius.circular(64.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Spacer(),
                      PopupMenuButton<String>(
                        icon: const Icon(Icons.menu, color: Colors.white),
                        itemBuilder: (context) => [
                          const PopupMenuItem<String>(
                            value: 'logout',
                            child: Text('Logout'),
                          ),
                        ],
                        onSelected: (value) {
                          if (value == 'logout') {
                            // Implement logout functionality
                            // For example, you can navigate to the login screen
                            Navigator.pushReplacementNamed(context, '/login');
                          }
                        },
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Welcome to Crash Cart,',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          Text('Dr. MJ Makiling',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text('Emergency Room Doctor',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                          SizedBox(height: 20),
                          Text('11/05/2001',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
          AppBar(
            backgroundColor: Colors.transparent,
            toolbarHeight: 500,
          ),
        ],
      ),
    );
  }
}
