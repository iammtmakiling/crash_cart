import 'package:flutter/material.dart';
import 'tabs.dart';

class StreamTab extends StatelessWidget {
  const StreamTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabs Example'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Stream'),
              Tab(text: 'History'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [SubStreamTab(), SubHistoryTab()],
        ),
      ),
    );
  }
}
