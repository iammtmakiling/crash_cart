import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MiniAppBar(),
        Expanded(
          child: Container(
            height: double.infinity, // Set a finite height
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 40,
                    decoration: const BoxDecoration(color: Colors.cyan),
                    child: const Center(
                      child: Text("User Information",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text("M",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Dr. Michael Jay R. Makiling",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Surgeon",
                    style: TextStyle(fontSize: 18),
                  ),
                  const Text(
                    "01234567890",
                    style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 20),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          UserDetail(
                              icon: Icons.person,
                              detailTitle: "Gender",
                              detailText: "Male"),
                          UserDetail(
                              icon: Icons.person_search,
                              detailTitle: "Age",
                              detailText: "22 years old"),
                          UserDetail(
                              icon: Icons.cake,
                              detailTitle: "Birthday",
                              detailText: "11/05/01"),
                          UserDetail(
                              icon: Icons.local_hospital,
                              detailTitle: "Hospital Id",
                              detailText: "102983283749"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
