import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class SubStreamTab extends StatelessWidget {
  const SubStreamTab({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Center(
      child: Column(children: [
        const SizedBox(height: 20),
        SearchTextField(
          controller: searchController,
        ),
      ]),
    );
  }
}
