import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class SubHistoryTab extends StatelessWidget {
  const SubHistoryTab({super.key});

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
